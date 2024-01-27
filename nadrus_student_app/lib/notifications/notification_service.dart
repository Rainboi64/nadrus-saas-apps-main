import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../router/app_router.dart';
import '../ui/resources/colors/colors.dart';
import 'configuration.dart';
import 'handling_notifications_utils.dart';
import 'models/customized_notification/customized_notification.dart';
import 'notification_redirect_handler.dart';

/// Define and initialize FirebaseMessaging globally
FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

NotificationService notificationService = NotificationService();

///Define FlutterLocalNotificationsPlugin globally
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationService {
  static const String ANDROID_CHANNEL_ID = "tradinos-paquik";
  static const String ANDROID_CHANNEL_NAME = "paquik";
  static const Color COLOR = DesignColors.primaryColor;

  /// Notification Service Initialize Functions
  initializeNotificationService() async {
    ///
    /// await _getMessagingToken();

    /// setup local notifications
    await setupLocalNotifications();

    /// setup push notifications
    await setupPushNotifications();
  }

  setupLocalNotifications() async {
    /// 1. set the AndroidInitializationSettings
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('ic_notification');

    /// 2. set the IOSInitializationSettings
    DarwinInitializationSettings iosInitializationSettings =
        const DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
      onDidReceiveLocalNotification: null,
      defaultPresentSound: true,
    );

    /// 3. set the InitializationSettings
    /// [which binds AndroidInitializationSettings and IOSInitializationSettings]
    InitializationSettings initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);

    /// 4. initialize flutterLocalNotificationsPlugin
    /// /// [which takes InitializationSettings as a parameter]
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      //onSelectNotification:onSelectNotification
    );
  }

  setupPushNotifications() async {
    ///request permission for receiving notifications if the device platform is iOS
    await iosNotificationPermission();

    /// handling background notifications
    await handlingBackgroundNotifications();

    /// handling foreground notifications
    await handlingForegroundNotifications();

    if (Platform.isIOS) await setupiOSMethodNative();
  }

  static Future cancelAll() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  static Future getMessagingToken() async {
    // NotificationRepository notificationRepository = NotificationRepository();
    // bool isAuth = await AuthenticationManager.loggedIn();
    // if (isAuth) {
    //   bool status = await AppStorage.getNotificationReceivingStatus();
    //   firebaseMessaging.getToken().then(
    //     (value) async {
    //       if (status) {
    //         ///Getting Device ID
    //         String deviceId = await getDeviceId();
    //
    //         ///Getting Device Platform
    //         String platform = Platform.isAndroid ? 'android' : 'ios';
    //
    //         /// Saving device id, platform and fcm token to the device storage as device details
    //         NotificationsStorage.setDeviceDetails(
    //             deviceId: deviceId,
    //             deviceToken: value.toString(),
    //             devicePlatform: platform);
    //
    //         Map<String, dynamic> details = {
    //           "device_id": deviceId,
    //           "token": value.toString(),
    //           "platform": platform,
    //           "language": AppStorage.getLanguage()
    //         };
    //         await notificationRepository.updateFCMToken(details);
    //       } else {
    //         NotificationsStorage.removeDeviceDetails();
    //         await notificationRepository.muteNotification(value.toString());
    //       }
    //     },
    //   );
    // }
  }
}

/// a function to display notifications
displayNotification(RemoteMessage message) async {
  //debugPrint("${message.notification}");
  //debugPrint('Message data: ${message.data}');
  //debugPrint('Message notification title: ${message.notification?.title}');
  //debugPrint('Message notification body: ${message.notification?.body}');

  CustomizedNotification? customizedNotification =
      getCustomizedNotification(message);

  if (Platform.isAndroid) {
    _showCustomizedNotification(customizedNotification);
  }
}

Future<void> _showCustomizedNotification(
    CustomizedNotification customizedNotification) async {
  /// 1. set AndroidNotificationDetails
  late AndroidNotificationDetails androidNotificationDetails;

  /// 2. set IOSNotificationDetails
  DarwinNotificationDetails iosNotificationDetails =
      const DarwinNotificationDetails(presentSound: true);

  try {
    /// Handling notification if it has image
    ///final ByteArrayAndroidBitmap largeIcon = ByteArrayAndroidBitmap(await _getByteArrayFromUrl(customizedNotification.payload!.image ?? ""));

    // final BigPictureStyleInformation bigPictureStyleInformation =
    //     BigPictureStyleInformation(largeIcon, htmlFormatContent: true, htmlFormatContentTitle: true, htmlFormatSummaryText: true);

    androidNotificationDetails = const AndroidNotificationDetails(
        NotificationService.ANDROID_CHANNEL_ID,
        NotificationService.ANDROID_CHANNEL_NAME,
        color: NotificationService.COLOR,

        /// largeIcon: largeIcon,
        priority: Priority.max);
  } catch (e) {
    // in case notification image is empty or can't be loaded
    androidNotificationDetails = const AndroidNotificationDetails(
      NotificationService.ANDROID_CHANNEL_ID,
      NotificationService.ANDROID_CHANNEL_NAME,
      color: NotificationService.COLOR, //lightTheme.primaryColor,
      priority: Priority.max,
      //sound: UriAndroidNotificationSound('assets/sounds/notification.mp3'),
    );
  }

  /// 3. set NotificationDetails
  /// [which binds AndroidNotificationDetails and IOSNotificationDetails]
  NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails, iOS: iosNotificationDetails);

  String payload = jsonEncode(customizedNotification.toJson());

  FlutterLocalNotificationsPlugin().show(
    Random().nextInt(500),
    customizedNotification.title,
    customizedNotification.body,
    notificationDetails,
    payload: payload, // this payload will be sent to selectNotification
  );
}

// Future<Uint8List> _getByteArrayFromUrl(String url) async {
//   final Response response = await get(Uri.parse(url));
//   return response.bodyBytes;
// }

/// Setup iOS when click on a notification, or when present a new notification
Future setupiOSMethodNative() async {
  var platform = const MethodChannel('com.tradinos.paquikApp/notifications');

  // Setup when click on a notification
  platform.setMethodCallHandler((call) async {
    Map<String, dynamic> map = Map<String, dynamic>.from(call.arguments);
    if (map["payload"] == null) map["payload"] = map;
    CustomizedNotification message = CustomizedNotification.fromJson(map);
    //------------ handle notification on click
    if (call.method == "didReceive") {
      final isRedirect = NotificationHandler.handleRedirectLink(map);
      if (isRedirect != null) {
        await Future.delayed(const Duration(milliseconds: 500));
        if (appRouter.current.name == Initial.name)
          await Future.delayed(const Duration(milliseconds: 3000));
        onSelectNotification(jsonEncode(message));
      }
    }
    return call.arguments;
  });
}

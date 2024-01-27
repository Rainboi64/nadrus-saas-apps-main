import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../config/instance_config.dart';
import '../ui/screens/main/viewmodels/main_viewmodel.dart';
import 'notification_service.dart';

/// FOREGROUND NOTIFICATION ////
handlingForegroundNotifications() async {
  ///1. setting foreground notifications
  await firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);

  ///2. listening to foreground notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    debugPrint('START: GOT A FOREGROUND NOTIFICATION!');
    displayNotification(message);

    /// Update notification count

    await findInstance<MainViewModel>().getUser();
    debugPrint('END: GOT A FOREGROUND NOTIFICATION!');
  });
}

/// BACKGROUND NOTIFICATION ////
handlingBackgroundNotifications() async {
  // There are a few things to keep in mind about your background message handler:
  // It must not be an anonymous function.
  // It must be a top-level function (e.g. not a class method which requires initialization)
  debugPrint('START: GOT A BACKGROUND NOTIFICATION!');
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  debugPrint('END: GOT A BACKGROUND NOTIFICATION!');
}

Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage remoteMessage) async {
  displayNotification(remoteMessage);
}

/// APP CLOSED/KILLED NOTIFICATION ////
Future<String?> didNotificationLaunchApp() async {
  final NotificationAppLaunchDetails? _notificationAppLaunchDetails =
      await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();
  final payload = _notificationAppLaunchDetails?.notificationResponse?.payload;
  return payload;
}

/// a function to request ios permission for receiving notifications
iosNotificationPermission() async {
  if (Platform.isIOS) {
    NotificationSettings settings = await firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    debugPrint('User granted permission: ${settings.authorizationStatus}');
  }
}

import 'notification_service.dart';

notificationConfig() async {
  /// await Firebase.initializeApp();
  await notificationService.initializeNotificationService();
}

bool onSelectNotification(String? notification) {
  ///debugPrint("onSelectNotification: $notification");
  // appRouter.push(Notifications(notification: notification));
  return true;
}

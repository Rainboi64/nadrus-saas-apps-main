import 'dart:convert';

class NotificationHandler {
  static Map<String, dynamic> decodeNotification(String notification) {
    Map<String, dynamic> notificationMap = jsonDecode(notification);
    return notificationMap['payload'];
  }

  static redirectNotification(Map<String, dynamic> payload) async {}

  static String? handleRedirectLink(Map<String, dynamic> payload) {}
}

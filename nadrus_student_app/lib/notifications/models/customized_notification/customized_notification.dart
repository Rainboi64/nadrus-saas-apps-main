import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../payload/payload.dart';

part 'customized_notification.freezed.dart';
part 'customized_notification.g.dart';

@freezed
class CustomizedNotification with _$CustomizedNotification {
  @JsonSerializable(explicitToJson: true)
  const factory CustomizedNotification({
    String? id,
    String? title,
    String? body,
    Payload? payload,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "read_at") DateTime? read_at,
  }) = _CustomizedNotification;
  factory CustomizedNotification.fromJson(Map<String, dynamic> json) =>
      _$CustomizedNotificationFromJson(json);
}

CustomizedNotification getCustomizedNotification(RemoteMessage message) {
  String? requestId = message.data['request_id'].toString().isEmpty
      ? null
      : message.data['request_id'];
  String? shipmentId = message.data['shipment_id'].toString().isEmpty
      ? null
      : message.data['shipment_id'];
  String? tripId = message.data['trip_id'].toString().isEmpty
      ? null
      : message.data['trip_id'];
  String? userId = message.data['user_id'].toString().isEmpty
      ? null
      : message.data['user_id'];
  String? type =
      message.data['type'].toString().isEmpty ? null : message.data['type'];
  Payload payload = Payload(
      redirectLink: message.data['redirect_link'],
      requestId: requestId == null ? null : int.parse(requestId),
      tripId: tripId == null ? null : int.parse(tripId),
      shipmentId: shipmentId == null ? null : int.parse(shipmentId),
      userId: userId == null ? null : int.parse(userId),
      image: message.data['image'],
      type: type);
  return CustomizedNotification(
    id: message.data['id'],
    title: message.data['title'] ?? "title not sent",
    body: message.data['body']?.toString() ?? "body not sent",
    createdAt: message.data['created_at'],
    payload: payload,
    userId: userId == null ? null : int.parse(userId),
  );
}

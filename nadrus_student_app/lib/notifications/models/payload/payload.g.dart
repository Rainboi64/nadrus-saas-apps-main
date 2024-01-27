// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payload _$$_PayloadFromJson(Map json) => _$_Payload(
      userId: json['user_id'],
      requestId: json['request_id'],
      shipmentId: json['shipment_id'],
      tripId: json['trip_id'],
      redirectLink: json['redirect_link'] as String?,
      image: json['image'] as String?,
      type: json['type'],
    );

Map<String, dynamic> _$$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'request_id': instance.requestId,
      'shipment_id': instance.shipmentId,
      'trip_id': instance.tripId,
      'redirect_link': instance.redirectLink,
      'image': instance.image,
      'type': instance.type,
    };

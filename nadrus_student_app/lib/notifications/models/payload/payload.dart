import 'package:freezed_annotation/freezed_annotation.dart';

part 'payload.freezed.dart';
part 'payload.g.dart';

@freezed
class Payload with _$Payload {
  @JsonSerializable(explicitToJson: true)
  const factory Payload({
    @JsonKey(name: "user_id") dynamic userId,
    @JsonKey(name: "request_id") dynamic requestId,
    @JsonKey(name: "shipment_id") dynamic shipmentId,
    @JsonKey(name: "trip_id") dynamic tripId,
    @JsonKey(name: "redirect_link") String? redirectLink,
    @JsonKey(name: "image") String? image,
    dynamic type,
  }) = _Payload;
  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

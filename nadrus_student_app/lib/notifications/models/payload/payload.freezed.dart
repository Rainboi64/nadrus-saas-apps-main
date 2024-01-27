// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  @JsonKey(name: "user_id")
  dynamic get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "request_id")
  dynamic get requestId => throw _privateConstructorUsedError;
  @JsonKey(name: "shipment_id")
  dynamic get shipmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "trip_id")
  dynamic get tripId => throw _privateConstructorUsedError;
  @JsonKey(name: "redirect_link")
  String? get redirectLink => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res, Payload>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") dynamic userId,
      @JsonKey(name: "request_id") dynamic requestId,
      @JsonKey(name: "shipment_id") dynamic shipmentId,
      @JsonKey(name: "trip_id") dynamic tripId,
      @JsonKey(name: "redirect_link") String? redirectLink,
      @JsonKey(name: "image") String? image,
      dynamic type});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload>
    implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? requestId = null,
    Object? shipmentId = null,
    Object? tripId = null,
    Object? redirectLink = freezed,
    Object? image = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      redirectLink: freezed == redirectLink
          ? _value.redirectLink
          : redirectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$$_PayloadCopyWith(
          _$_Payload value, $Res Function(_$_Payload) then) =
      __$$_PayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_id") dynamic userId,
      @JsonKey(name: "request_id") dynamic requestId,
      @JsonKey(name: "shipment_id") dynamic shipmentId,
      @JsonKey(name: "trip_id") dynamic tripId,
      @JsonKey(name: "redirect_link") String? redirectLink,
      @JsonKey(name: "image") String? image,
      dynamic type});
}

/// @nodoc
class __$$_PayloadCopyWithImpl<$Res>
    extends _$PayloadCopyWithImpl<$Res, _$_Payload>
    implements _$$_PayloadCopyWith<$Res> {
  __$$_PayloadCopyWithImpl(_$_Payload _value, $Res Function(_$_Payload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? requestId = null,
    Object? shipmentId = null,
    Object? tripId = null,
    Object? redirectLink = freezed,
    Object? image = freezed,
    Object? type = null,
  }) {
    return _then(_$_Payload(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      redirectLink: freezed == redirectLink
          ? _value.redirectLink
          : redirectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Payload implements _Payload {
  const _$_Payload(
      {@JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "request_id") this.requestId,
      @JsonKey(name: "shipment_id") this.shipmentId,
      @JsonKey(name: "trip_id") this.tripId,
      @JsonKey(name: "redirect_link") this.redirectLink,
      @JsonKey(name: "image") this.image,
      this.type});

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadFromJson(json);

  @override
  @JsonKey(name: "user_id")
  final dynamic userId;
  @override
  @JsonKey(name: "request_id")
  final dynamic requestId;
  @override
  @JsonKey(name: "shipment_id")
  final dynamic shipmentId;
  @override
  @JsonKey(name: "trip_id")
  final dynamic tripId;
  @override
  @JsonKey(name: "redirect_link")
  final String? redirectLink;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  final dynamic type;

  @override
  String toString() {
    return 'Payload(userId: $userId, requestId: $requestId, shipmentId: $shipmentId, tripId: $tripId, redirectLink: $redirectLink, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payload &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.requestId, requestId) &&
            const DeepCollectionEquality()
                .equals(other.shipmentId, shipmentId) &&
            const DeepCollectionEquality().equals(other.tripId, tripId) &&
            (identical(other.redirectLink, redirectLink) ||
                other.redirectLink == redirectLink) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(requestId),
      const DeepCollectionEquality().hash(shipmentId),
      const DeepCollectionEquality().hash(tripId),
      redirectLink,
      image,
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayloadCopyWith<_$_Payload> get copyWith =>
      __$$_PayloadCopyWithImpl<_$_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadToJson(
      this,
    );
  }
}

abstract class _Payload implements Payload {
  const factory _Payload(
      {@JsonKey(name: "user_id") final dynamic userId,
      @JsonKey(name: "request_id") final dynamic requestId,
      @JsonKey(name: "shipment_id") final dynamic shipmentId,
      @JsonKey(name: "trip_id") final dynamic tripId,
      @JsonKey(name: "redirect_link") final String? redirectLink,
      @JsonKey(name: "image") final String? image,
      final dynamic type}) = _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  @JsonKey(name: "user_id")
  dynamic get userId;
  @override
  @JsonKey(name: "request_id")
  dynamic get requestId;
  @override
  @JsonKey(name: "shipment_id")
  dynamic get shipmentId;
  @override
  @JsonKey(name: "trip_id")
  dynamic get tripId;
  @override
  @JsonKey(name: "redirect_link")
  String? get redirectLink;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  dynamic get type;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadCopyWith<_$_Payload> get copyWith =>
      throw _privateConstructorUsedError;
}

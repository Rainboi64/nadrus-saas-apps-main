// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customized_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomizedNotification _$CustomizedNotificationFromJson(
    Map<String, dynamic> json) {
  return _CustomizedNotification.fromJson(json);
}

/// @nodoc
mixin _$CustomizedNotification {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "read_at")
  DateTime? get read_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomizedNotificationCopyWith<CustomizedNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomizedNotificationCopyWith<$Res> {
  factory $CustomizedNotificationCopyWith(CustomizedNotification value,
          $Res Function(CustomizedNotification) then) =
      _$CustomizedNotificationCopyWithImpl<$Res, CustomizedNotification>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      Payload? payload,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "read_at") DateTime? read_at});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$CustomizedNotificationCopyWithImpl<$Res,
        $Val extends CustomizedNotification>
    implements $CustomizedNotificationCopyWith<$Res> {
  _$CustomizedNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? payload = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? read_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      read_at: freezed == read_at
          ? _value.read_at
          : read_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomizedNotificationCopyWith<$Res>
    implements $CustomizedNotificationCopyWith<$Res> {
  factory _$$_CustomizedNotificationCopyWith(_$_CustomizedNotification value,
          $Res Function(_$_CustomizedNotification) then) =
      __$$_CustomizedNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? body,
      Payload? payload,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "read_at") DateTime? read_at});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$_CustomizedNotificationCopyWithImpl<$Res>
    extends _$CustomizedNotificationCopyWithImpl<$Res,
        _$_CustomizedNotification>
    implements _$$_CustomizedNotificationCopyWith<$Res> {
  __$$_CustomizedNotificationCopyWithImpl(_$_CustomizedNotification _value,
      $Res Function(_$_CustomizedNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? payload = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? read_at = freezed,
  }) {
    return _then(_$_CustomizedNotification(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      read_at: freezed == read_at
          ? _value.read_at
          : read_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CustomizedNotification implements _CustomizedNotification {
  const _$_CustomizedNotification(
      {this.id,
      this.title,
      this.body,
      this.payload,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "read_at") this.read_at});

  factory _$_CustomizedNotification.fromJson(Map<String, dynamic> json) =>
      _$$_CustomizedNotificationFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final Payload? payload;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "read_at")
  final DateTime? read_at;

  @override
  String toString() {
    return 'CustomizedNotification(id: $id, title: $title, body: $body, payload: $payload, userId: $userId, createdAt: $createdAt, read_at: $read_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomizedNotification &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.read_at, read_at) || other.read_at == read_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, body, payload, userId, createdAt, read_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomizedNotificationCopyWith<_$_CustomizedNotification> get copyWith =>
      __$$_CustomizedNotificationCopyWithImpl<_$_CustomizedNotification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomizedNotificationToJson(
      this,
    );
  }
}

abstract class _CustomizedNotification implements CustomizedNotification {
  const factory _CustomizedNotification(
          {final String? id,
          final String? title,
          final String? body,
          final Payload? payload,
          @JsonKey(name: "user_id") final int? userId,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "read_at") final DateTime? read_at}) =
      _$_CustomizedNotification;

  factory _CustomizedNotification.fromJson(Map<String, dynamic> json) =
      _$_CustomizedNotification.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  Payload? get payload;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "read_at")
  DateTime? get read_at;
  @override
  @JsonKey(ignore: true)
  _$$_CustomizedNotificationCopyWith<_$_CustomizedNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get nthClass => throw _privateConstructorUsedError;
  dynamic get sectionId => throw _privateConstructorUsedError;
  dynamic get subjectId => throw _privateConstructorUsedError;
  String? get fromTime => throw _privateConstructorUsedError;
  String? get toTime => throw _privateConstructorUsedError;
  dynamic get isBrake => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get tenantId => throw _privateConstructorUsedError;
  dynamic get done => throw _privateConstructorUsedError;
  dynamic get nowActive => throw _privateConstructorUsedError;
  @JsonKey(name: "class")
  Class? get schoolClass => throw _privateConstructorUsedError;
  Section? get section => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic nthClass,
      dynamic sectionId,
      dynamic subjectId,
      String? fromTime,
      String? toTime,
      dynamic isBrake,
      String? day,
      String? tenantId,
      dynamic done,
      dynamic nowActive,
      @JsonKey(name: "class") Class? schoolClass,
      Section? section});

  $ClassCopyWith<$Res>? get schoolClass;
  $SectionCopyWith<$Res>? get section;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nthClass = freezed,
    Object? sectionId = freezed,
    Object? subjectId = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? isBrake = freezed,
    Object? day = freezed,
    Object? tenantId = freezed,
    Object? done = freezed,
    Object? nowActive = freezed,
    Object? schoolClass = freezed,
    Object? section = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nthClass: freezed == nthClass
          ? _value.nthClass
          : nthClass // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isBrake: freezed == isBrake
          ? _value.isBrake
          : isBrake // ignore: cast_nullable_to_non_nullable
              as dynamic,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nowActive: freezed == nowActive
          ? _value.nowActive
          : nowActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      schoolClass: freezed == schoolClass
          ? _value.schoolClass
          : schoolClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res>? get schoolClass {
    if (_value.schoolClass == null) {
      return null;
    }

    return $ClassCopyWith<$Res>(_value.schoolClass!, (value) {
      return _then(_value.copyWith(schoolClass: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionCopyWith<$Res>? get section {
    if (_value.section == null) {
      return null;
    }

    return $SectionCopyWith<$Res>(_value.section!, (value) {
      return _then(_value.copyWith(section: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$_SessionCopyWith(
          _$_Session value, $Res Function(_$_Session) then) =
      __$$_SessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic nthClass,
      dynamic sectionId,
      dynamic subjectId,
      String? fromTime,
      String? toTime,
      dynamic isBrake,
      String? day,
      String? tenantId,
      dynamic done,
      dynamic nowActive,
      @JsonKey(name: "class") Class? schoolClass,
      Section? section});

  @override
  $ClassCopyWith<$Res>? get schoolClass;
  @override
  $SectionCopyWith<$Res>? get section;
}

/// @nodoc
class __$$_SessionCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$_Session>
    implements _$$_SessionCopyWith<$Res> {
  __$$_SessionCopyWithImpl(_$_Session _value, $Res Function(_$_Session) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nthClass = freezed,
    Object? sectionId = freezed,
    Object? subjectId = freezed,
    Object? fromTime = freezed,
    Object? toTime = freezed,
    Object? isBrake = freezed,
    Object? day = freezed,
    Object? tenantId = freezed,
    Object? done = freezed,
    Object? nowActive = freezed,
    Object? schoolClass = freezed,
    Object? section = freezed,
  }) {
    return _then(_$_Session(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nthClass: freezed == nthClass
          ? _value.nthClass
          : nthClass // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fromTime: freezed == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as String?,
      toTime: freezed == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isBrake: freezed == isBrake
          ? _value.isBrake
          : isBrake // ignore: cast_nullable_to_non_nullable
              as dynamic,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nowActive: freezed == nowActive
          ? _value.nowActive
          : nowActive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      schoolClass: freezed == schoolClass
          ? _value.schoolClass
          : schoolClass // ignore: cast_nullable_to_non_nullable
              as Class?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Session implements _Session {
  const _$_Session(
      {this.id,
      this.nthClass,
      this.sectionId,
      this.subjectId,
      this.fromTime,
      this.toTime,
      this.isBrake,
      this.day,
      this.tenantId,
      this.done,
      this.nowActive,
      @JsonKey(name: "class") this.schoolClass,
      this.section});

  factory _$_Session.fromJson(Map<String, dynamic> json) =>
      _$$_SessionFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic nthClass;
  @override
  final dynamic sectionId;
  @override
  final dynamic subjectId;
  @override
  final String? fromTime;
  @override
  final String? toTime;
  @override
  final dynamic isBrake;
  @override
  final String? day;
  @override
  final String? tenantId;
  @override
  final dynamic done;
  @override
  final dynamic nowActive;
  @override
  @JsonKey(name: "class")
  final Class? schoolClass;
  @override
  final Section? section;

  @override
  String toString() {
    return 'Session(id: $id, nthClass: $nthClass, sectionId: $sectionId, subjectId: $subjectId, fromTime: $fromTime, toTime: $toTime, isBrake: $isBrake, day: $day, tenantId: $tenantId, done: $done, nowActive: $nowActive, schoolClass: $schoolClass, section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Session &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nthClass, nthClass) &&
            const DeepCollectionEquality().equals(other.sectionId, sectionId) &&
            const DeepCollectionEquality().equals(other.subjectId, subjectId) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            const DeepCollectionEquality().equals(other.isBrake, isBrake) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.nowActive, nowActive) &&
            (identical(other.schoolClass, schoolClass) ||
                other.schoolClass == schoolClass) &&
            (identical(other.section, section) || other.section == section));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nthClass),
      const DeepCollectionEquality().hash(sectionId),
      const DeepCollectionEquality().hash(subjectId),
      fromTime,
      toTime,
      const DeepCollectionEquality().hash(isBrake),
      day,
      tenantId,
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(nowActive),
      schoolClass,
      section);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      __$$_SessionCopyWithImpl<_$_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {final dynamic id,
      final dynamic nthClass,
      final dynamic sectionId,
      final dynamic subjectId,
      final String? fromTime,
      final String? toTime,
      final dynamic isBrake,
      final String? day,
      final String? tenantId,
      final dynamic done,
      final dynamic nowActive,
      @JsonKey(name: "class") final Class? schoolClass,
      final Section? section}) = _$_Session;

  factory _Session.fromJson(Map<String, dynamic> json) = _$_Session.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get nthClass;
  @override
  dynamic get sectionId;
  @override
  dynamic get subjectId;
  @override
  String? get fromTime;
  @override
  String? get toTime;
  @override
  dynamic get isBrake;
  @override
  String? get day;
  @override
  String? get tenantId;
  @override
  dynamic get done;
  @override
  dynamic get nowActive;
  @override
  @JsonKey(name: "class")
  Class? get schoolClass;
  @override
  Section? get section;
  @override
  @JsonKey(ignore: true)
  _$$_SessionCopyWith<_$_Session> get copyWith =>
      throw _privateConstructorUsedError;
}

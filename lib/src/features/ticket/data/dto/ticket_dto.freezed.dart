// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketDto {

 int get id; DateTime get arrivedAt; DateTime get expiredAt; TicketStatus get status; int get userId; int get scheduleId; UserDto? get user; ScheduleDto? get schedule; ReviewDto? get review;
/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<TicketDto> get copyWith => _$TicketDtoCopyWithImpl<TicketDto>(this as TicketDto, _$identity);

  /// Serializes this TicketDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketDto&&(identical(other.id, id) || other.id == id)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.expiredAt, expiredAt) || other.expiredAt == expiredAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.user, user) || other.user == user)&&(identical(other.schedule, schedule) || other.schedule == schedule)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,arrivedAt,expiredAt,status,userId,scheduleId,user,schedule,review);

@override
String toString() {
  return 'TicketDto(id: $id, arrivedAt: $arrivedAt, expiredAt: $expiredAt, status: $status, userId: $userId, scheduleId: $scheduleId, user: $user, schedule: $schedule, review: $review)';
}


}

/// @nodoc
abstract mixin class $TicketDtoCopyWith<$Res>  {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) _then) = _$TicketDtoCopyWithImpl;
@useResult
$Res call({
 int id, DateTime arrivedAt, DateTime expiredAt, TicketStatus status, int userId, int scheduleId, UserDto? user, ScheduleDto? schedule, ReviewDto? review
});


$UserDtoCopyWith<$Res>? get user;$ScheduleDtoCopyWith<$Res>? get schedule;$ReviewDtoCopyWith<$Res>? get review;

}
/// @nodoc
class _$TicketDtoCopyWithImpl<$Res>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._self, this._then);

  final TicketDto _self;
  final $Res Function(TicketDto) _then;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? arrivedAt = null,Object? expiredAt = null,Object? status = null,Object? userId = null,Object? scheduleId = null,Object? user = freezed,Object? schedule = freezed,Object? review = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,arrivedAt: null == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiredAt: null == expiredAt ? _self.expiredAt : expiredAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto?,schedule: freezed == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as ScheduleDto?,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewDto?,
  ));
}
/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<$Res>? get schedule {
    if (_self.schedule == null) {
    return null;
  }

  return $ScheduleDtoCopyWith<$Res>(_self.schedule!, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<$Res>? get review {
    if (_self.review == null) {
    return null;
  }

  return $ReviewDtoCopyWith<$Res>(_self.review!, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _TicketDto extends TicketDto {
  const _TicketDto({required this.id, required this.arrivedAt, required this.expiredAt, required this.status, required this.userId, required this.scheduleId, this.user, this.schedule, this.review}): super._();
  factory _TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);

@override final  int id;
@override final  DateTime arrivedAt;
@override final  DateTime expiredAt;
@override final  TicketStatus status;
@override final  int userId;
@override final  int scheduleId;
@override final  UserDto? user;
@override final  ScheduleDto? schedule;
@override final  ReviewDto? review;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketDtoCopyWith<_TicketDto> get copyWith => __$TicketDtoCopyWithImpl<_TicketDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketDto&&(identical(other.id, id) || other.id == id)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.expiredAt, expiredAt) || other.expiredAt == expiredAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.user, user) || other.user == user)&&(identical(other.schedule, schedule) || other.schedule == schedule)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,arrivedAt,expiredAt,status,userId,scheduleId,user,schedule,review);

@override
String toString() {
  return 'TicketDto(id: $id, arrivedAt: $arrivedAt, expiredAt: $expiredAt, status: $status, userId: $userId, scheduleId: $scheduleId, user: $user, schedule: $schedule, review: $review)';
}


}

/// @nodoc
abstract mixin class _$TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$TicketDtoCopyWith(_TicketDto value, $Res Function(_TicketDto) _then) = __$TicketDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime arrivedAt, DateTime expiredAt, TicketStatus status, int userId, int scheduleId, UserDto? user, ScheduleDto? schedule, ReviewDto? review
});


@override $UserDtoCopyWith<$Res>? get user;@override $ScheduleDtoCopyWith<$Res>? get schedule;@override $ReviewDtoCopyWith<$Res>? get review;

}
/// @nodoc
class __$TicketDtoCopyWithImpl<$Res>
    implements _$TicketDtoCopyWith<$Res> {
  __$TicketDtoCopyWithImpl(this._self, this._then);

  final _TicketDto _self;
  final $Res Function(_TicketDto) _then;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? arrivedAt = null,Object? expiredAt = null,Object? status = null,Object? userId = null,Object? scheduleId = null,Object? user = freezed,Object? schedule = freezed,Object? review = freezed,}) {
  return _then(_TicketDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,arrivedAt: null == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiredAt: null == expiredAt ? _self.expiredAt : expiredAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto?,schedule: freezed == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as ScheduleDto?,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewDto?,
  ));
}

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<$Res>? get schedule {
    if (_self.schedule == null) {
    return null;
  }

  return $ScheduleDtoCopyWith<$Res>(_self.schedule!, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<$Res>? get review {
    if (_self.review == null) {
    return null;
  }

  return $ReviewDtoCopyWith<$Res>(_self.review!, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}

// dart format on

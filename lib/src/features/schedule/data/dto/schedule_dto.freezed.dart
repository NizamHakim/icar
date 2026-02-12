// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScheduleDto {

 int get id; ScheduleSession get session; DateTime get arrivalTime; int get icarId; int get icarStopId; IcarDto? get icar; IcarStopDto? get icarStop; int? get ticketCount;
/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleDtoCopyWith<ScheduleDto> get copyWith => _$ScheduleDtoCopyWithImpl<ScheduleDto>(this as ScheduleDto, _$identity);

  /// Serializes this ScheduleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.session, session) || other.session == session)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.icarId, icarId) || other.icarId == icarId)&&(identical(other.icarStopId, icarStopId) || other.icarStopId == icarStopId)&&(identical(other.icar, icar) || other.icar == icar)&&(identical(other.icarStop, icarStop) || other.icarStop == icarStop)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,session,arrivalTime,icarId,icarStopId,icar,icarStop,ticketCount);

@override
String toString() {
  return 'ScheduleDto(id: $id, session: $session, arrivalTime: $arrivalTime, icarId: $icarId, icarStopId: $icarStopId, icar: $icar, icarStop: $icarStop, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class $ScheduleDtoCopyWith<$Res>  {
  factory $ScheduleDtoCopyWith(ScheduleDto value, $Res Function(ScheduleDto) _then) = _$ScheduleDtoCopyWithImpl;
@useResult
$Res call({
 int id, ScheduleSession session, DateTime arrivalTime, int icarId, int icarStopId, IcarDto? icar, IcarStopDto? icarStop, int? ticketCount
});


$IcarDtoCopyWith<$Res>? get icar;$IcarStopDtoCopyWith<$Res>? get icarStop;

}
/// @nodoc
class _$ScheduleDtoCopyWithImpl<$Res>
    implements $ScheduleDtoCopyWith<$Res> {
  _$ScheduleDtoCopyWithImpl(this._self, this._then);

  final ScheduleDto _self;
  final $Res Function(ScheduleDto) _then;

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? session = null,Object? arrivalTime = null,Object? icarId = null,Object? icarStopId = null,Object? icar = freezed,Object? icarStop = freezed,Object? ticketCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as ScheduleSession,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,icarId: null == icarId ? _self.icarId : icarId // ignore: cast_nullable_to_non_nullable
as int,icarStopId: null == icarStopId ? _self.icarStopId : icarStopId // ignore: cast_nullable_to_non_nullable
as int,icar: freezed == icar ? _self.icar : icar // ignore: cast_nullable_to_non_nullable
as IcarDto?,icarStop: freezed == icarStop ? _self.icarStop : icarStop // ignore: cast_nullable_to_non_nullable
as IcarStopDto?,ticketCount: freezed == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarDtoCopyWith<$Res>? get icar {
    if (_self.icar == null) {
    return null;
  }

  return $IcarDtoCopyWith<$Res>(_self.icar!, (value) {
    return _then(_self.copyWith(icar: value));
  });
}/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarStopDtoCopyWith<$Res>? get icarStop {
    if (_self.icarStop == null) {
    return null;
  }

  return $IcarStopDtoCopyWith<$Res>(_self.icarStop!, (value) {
    return _then(_self.copyWith(icarStop: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ScheduleDto extends ScheduleDto {
  const _ScheduleDto({required this.id, required this.session, required this.arrivalTime, required this.icarId, required this.icarStopId, this.icar, this.icarStop, this.ticketCount}): super._();
  factory _ScheduleDto.fromJson(Map<String, dynamic> json) => _$ScheduleDtoFromJson(json);

@override final  int id;
@override final  ScheduleSession session;
@override final  DateTime arrivalTime;
@override final  int icarId;
@override final  int icarStopId;
@override final  IcarDto? icar;
@override final  IcarStopDto? icarStop;
@override final  int? ticketCount;

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleDtoCopyWith<_ScheduleDto> get copyWith => __$ScheduleDtoCopyWithImpl<_ScheduleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.session, session) || other.session == session)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.icarId, icarId) || other.icarId == icarId)&&(identical(other.icarStopId, icarStopId) || other.icarStopId == icarStopId)&&(identical(other.icar, icar) || other.icar == icar)&&(identical(other.icarStop, icarStop) || other.icarStop == icarStop)&&(identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,session,arrivalTime,icarId,icarStopId,icar,icarStop,ticketCount);

@override
String toString() {
  return 'ScheduleDto(id: $id, session: $session, arrivalTime: $arrivalTime, icarId: $icarId, icarStopId: $icarStopId, icar: $icar, icarStop: $icarStop, ticketCount: $ticketCount)';
}


}

/// @nodoc
abstract mixin class _$ScheduleDtoCopyWith<$Res> implements $ScheduleDtoCopyWith<$Res> {
  factory _$ScheduleDtoCopyWith(_ScheduleDto value, $Res Function(_ScheduleDto) _then) = __$ScheduleDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, ScheduleSession session, DateTime arrivalTime, int icarId, int icarStopId, IcarDto? icar, IcarStopDto? icarStop, int? ticketCount
});


@override $IcarDtoCopyWith<$Res>? get icar;@override $IcarStopDtoCopyWith<$Res>? get icarStop;

}
/// @nodoc
class __$ScheduleDtoCopyWithImpl<$Res>
    implements _$ScheduleDtoCopyWith<$Res> {
  __$ScheduleDtoCopyWithImpl(this._self, this._then);

  final _ScheduleDto _self;
  final $Res Function(_ScheduleDto) _then;

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? session = null,Object? arrivalTime = null,Object? icarId = null,Object? icarStopId = null,Object? icar = freezed,Object? icarStop = freezed,Object? ticketCount = freezed,}) {
  return _then(_ScheduleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as ScheduleSession,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,icarId: null == icarId ? _self.icarId : icarId // ignore: cast_nullable_to_non_nullable
as int,icarStopId: null == icarStopId ? _self.icarStopId : icarStopId // ignore: cast_nullable_to_non_nullable
as int,icar: freezed == icar ? _self.icar : icar // ignore: cast_nullable_to_non_nullable
as IcarDto?,icarStop: freezed == icarStop ? _self.icarStop : icarStop // ignore: cast_nullable_to_non_nullable
as IcarStopDto?,ticketCount: freezed == ticketCount ? _self.ticketCount : ticketCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarDtoCopyWith<$Res>? get icar {
    if (_self.icar == null) {
    return null;
  }

  return $IcarDtoCopyWith<$Res>(_self.icar!, (value) {
    return _then(_self.copyWith(icar: value));
  });
}/// Create a copy of ScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarStopDtoCopyWith<$Res>? get icarStop {
    if (_self.icarStop == null) {
    return null;
  }

  return $IcarStopDtoCopyWith<$Res>(_self.icarStop!, (value) {
    return _then(_self.copyWith(icarStop: value));
  });
}
}

// dart format on

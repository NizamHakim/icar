// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icar_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IcarDto {

 int get id; String get name; int get capacity; IcarStatus get status; int get icarRouteId; IcarRouteDto? get icarRoute; List<ScheduleDto>? get schedules;
/// Create a copy of IcarDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IcarDtoCopyWith<IcarDto> get copyWith => _$IcarDtoCopyWithImpl<IcarDto>(this as IcarDto, _$identity);

  /// Serializes this IcarDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IcarDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.icarRouteId, icarRouteId) || other.icarRouteId == icarRouteId)&&(identical(other.icarRoute, icarRoute) || other.icarRoute == icarRoute)&&const DeepCollectionEquality().equals(other.schedules, schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,capacity,status,icarRouteId,icarRoute,const DeepCollectionEquality().hash(schedules));

@override
String toString() {
  return 'IcarDto(id: $id, name: $name, capacity: $capacity, status: $status, icarRouteId: $icarRouteId, icarRoute: $icarRoute, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class $IcarDtoCopyWith<$Res>  {
  factory $IcarDtoCopyWith(IcarDto value, $Res Function(IcarDto) _then) = _$IcarDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, int capacity, IcarStatus status, int icarRouteId, IcarRouteDto? icarRoute, List<ScheduleDto>? schedules
});


$IcarRouteDtoCopyWith<$Res>? get icarRoute;

}
/// @nodoc
class _$IcarDtoCopyWithImpl<$Res>
    implements $IcarDtoCopyWith<$Res> {
  _$IcarDtoCopyWithImpl(this._self, this._then);

  final IcarDto _self;
  final $Res Function(IcarDto) _then;

/// Create a copy of IcarDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? capacity = null,Object? status = null,Object? icarRouteId = null,Object? icarRoute = freezed,Object? schedules = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as IcarStatus,icarRouteId: null == icarRouteId ? _self.icarRouteId : icarRouteId // ignore: cast_nullable_to_non_nullable
as int,icarRoute: freezed == icarRoute ? _self.icarRoute : icarRoute // ignore: cast_nullable_to_non_nullable
as IcarRouteDto?,schedules: freezed == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<ScheduleDto>?,
  ));
}
/// Create a copy of IcarDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarRouteDtoCopyWith<$Res>? get icarRoute {
    if (_self.icarRoute == null) {
    return null;
  }

  return $IcarRouteDtoCopyWith<$Res>(_self.icarRoute!, (value) {
    return _then(_self.copyWith(icarRoute: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _IcarDto extends IcarDto {
  const _IcarDto({required this.id, required this.name, required this.capacity, required this.status, required this.icarRouteId, this.icarRoute, final  List<ScheduleDto>? schedules}): _schedules = schedules,super._();
  factory _IcarDto.fromJson(Map<String, dynamic> json) => _$IcarDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  int capacity;
@override final  IcarStatus status;
@override final  int icarRouteId;
@override final  IcarRouteDto? icarRoute;
 final  List<ScheduleDto>? _schedules;
@override List<ScheduleDto>? get schedules {
  final value = _schedules;
  if (value == null) return null;
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of IcarDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IcarDtoCopyWith<_IcarDto> get copyWith => __$IcarDtoCopyWithImpl<_IcarDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IcarDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IcarDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&(identical(other.status, status) || other.status == status)&&(identical(other.icarRouteId, icarRouteId) || other.icarRouteId == icarRouteId)&&(identical(other.icarRoute, icarRoute) || other.icarRoute == icarRoute)&&const DeepCollectionEquality().equals(other._schedules, _schedules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,capacity,status,icarRouteId,icarRoute,const DeepCollectionEquality().hash(_schedules));

@override
String toString() {
  return 'IcarDto(id: $id, name: $name, capacity: $capacity, status: $status, icarRouteId: $icarRouteId, icarRoute: $icarRoute, schedules: $schedules)';
}


}

/// @nodoc
abstract mixin class _$IcarDtoCopyWith<$Res> implements $IcarDtoCopyWith<$Res> {
  factory _$IcarDtoCopyWith(_IcarDto value, $Res Function(_IcarDto) _then) = __$IcarDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int capacity, IcarStatus status, int icarRouteId, IcarRouteDto? icarRoute, List<ScheduleDto>? schedules
});


@override $IcarRouteDtoCopyWith<$Res>? get icarRoute;

}
/// @nodoc
class __$IcarDtoCopyWithImpl<$Res>
    implements _$IcarDtoCopyWith<$Res> {
  __$IcarDtoCopyWithImpl(this._self, this._then);

  final _IcarDto _self;
  final $Res Function(_IcarDto) _then;

/// Create a copy of IcarDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? capacity = null,Object? status = null,Object? icarRouteId = null,Object? icarRoute = freezed,Object? schedules = freezed,}) {
  return _then(_IcarDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as IcarStatus,icarRouteId: null == icarRouteId ? _self.icarRouteId : icarRouteId // ignore: cast_nullable_to_non_nullable
as int,icarRoute: freezed == icarRoute ? _self.icarRoute : icarRoute // ignore: cast_nullable_to_non_nullable
as IcarRouteDto?,schedules: freezed == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<ScheduleDto>?,
  ));
}

/// Create a copy of IcarDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarRouteDtoCopyWith<$Res>? get icarRoute {
    if (_self.icarRoute == null) {
    return null;
  }

  return $IcarRouteDtoCopyWith<$Res>(_self.icarRoute!, (value) {
    return _then(_self.copyWith(icarRoute: value));
  });
}
}

// dart format on

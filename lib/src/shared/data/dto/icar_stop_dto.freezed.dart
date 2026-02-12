// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icar_stop_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IcarStopDto {

 int get id; String get name;@JsonKey(fromJson: latLngFromJson, toJson: latLngToJson) LatLng get coordinate;// optional
 int? get distance; List<RouteStopWaypointDto>? get routeStopWaypoints; List<ScheduleDto>? get schedules;@JsonKey(fromJson: durationFromJson, toJson: durationToJson) Duration? get duration;
/// Create a copy of IcarStopDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IcarStopDtoCopyWith<IcarStopDto> get copyWith => _$IcarStopDtoCopyWithImpl<IcarStopDto>(this as IcarStopDto, _$identity);

  /// Serializes this IcarStopDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IcarStopDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.coordinate, coordinate) || other.coordinate == coordinate)&&(identical(other.distance, distance) || other.distance == distance)&&const DeepCollectionEquality().equals(other.routeStopWaypoints, routeStopWaypoints)&&const DeepCollectionEquality().equals(other.schedules, schedules)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,coordinate,distance,const DeepCollectionEquality().hash(routeStopWaypoints),const DeepCollectionEquality().hash(schedules),duration);

@override
String toString() {
  return 'IcarStopDto(id: $id, name: $name, coordinate: $coordinate, distance: $distance, routeStopWaypoints: $routeStopWaypoints, schedules: $schedules, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $IcarStopDtoCopyWith<$Res>  {
  factory $IcarStopDtoCopyWith(IcarStopDto value, $Res Function(IcarStopDto) _then) = _$IcarStopDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(fromJson: latLngFromJson, toJson: latLngToJson) LatLng coordinate, int? distance, List<RouteStopWaypointDto>? routeStopWaypoints, List<ScheduleDto>? schedules,@JsonKey(fromJson: durationFromJson, toJson: durationToJson) Duration? duration
});




}
/// @nodoc
class _$IcarStopDtoCopyWithImpl<$Res>
    implements $IcarStopDtoCopyWith<$Res> {
  _$IcarStopDtoCopyWithImpl(this._self, this._then);

  final IcarStopDto _self;
  final $Res Function(IcarStopDto) _then;

/// Create a copy of IcarStopDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? coordinate = null,Object? distance = freezed,Object? routeStopWaypoints = freezed,Object? schedules = freezed,Object? duration = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,coordinate: null == coordinate ? _self.coordinate : coordinate // ignore: cast_nullable_to_non_nullable
as LatLng,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int?,routeStopWaypoints: freezed == routeStopWaypoints ? _self.routeStopWaypoints : routeStopWaypoints // ignore: cast_nullable_to_non_nullable
as List<RouteStopWaypointDto>?,schedules: freezed == schedules ? _self.schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<ScheduleDto>?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IcarStopDto extends IcarStopDto {
  const _IcarStopDto({required this.id, required this.name, @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson) required this.coordinate, this.distance, final  List<RouteStopWaypointDto>? routeStopWaypoints, final  List<ScheduleDto>? schedules, @JsonKey(fromJson: durationFromJson, toJson: durationToJson) this.duration}): _routeStopWaypoints = routeStopWaypoints,_schedules = schedules,super._();
  factory _IcarStopDto.fromJson(Map<String, dynamic> json) => _$IcarStopDtoFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(fromJson: latLngFromJson, toJson: latLngToJson) final  LatLng coordinate;
// optional
@override final  int? distance;
 final  List<RouteStopWaypointDto>? _routeStopWaypoints;
@override List<RouteStopWaypointDto>? get routeStopWaypoints {
  final value = _routeStopWaypoints;
  if (value == null) return null;
  if (_routeStopWaypoints is EqualUnmodifiableListView) return _routeStopWaypoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ScheduleDto>? _schedules;
@override List<ScheduleDto>? get schedules {
  final value = _schedules;
  if (value == null) return null;
  if (_schedules is EqualUnmodifiableListView) return _schedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(fromJson: durationFromJson, toJson: durationToJson) final  Duration? duration;

/// Create a copy of IcarStopDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IcarStopDtoCopyWith<_IcarStopDto> get copyWith => __$IcarStopDtoCopyWithImpl<_IcarStopDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IcarStopDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IcarStopDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.coordinate, coordinate) || other.coordinate == coordinate)&&(identical(other.distance, distance) || other.distance == distance)&&const DeepCollectionEquality().equals(other._routeStopWaypoints, _routeStopWaypoints)&&const DeepCollectionEquality().equals(other._schedules, _schedules)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,coordinate,distance,const DeepCollectionEquality().hash(_routeStopWaypoints),const DeepCollectionEquality().hash(_schedules),duration);

@override
String toString() {
  return 'IcarStopDto(id: $id, name: $name, coordinate: $coordinate, distance: $distance, routeStopWaypoints: $routeStopWaypoints, schedules: $schedules, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$IcarStopDtoCopyWith<$Res> implements $IcarStopDtoCopyWith<$Res> {
  factory _$IcarStopDtoCopyWith(_IcarStopDto value, $Res Function(_IcarStopDto) _then) = __$IcarStopDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(fromJson: latLngFromJson, toJson: latLngToJson) LatLng coordinate, int? distance, List<RouteStopWaypointDto>? routeStopWaypoints, List<ScheduleDto>? schedules,@JsonKey(fromJson: durationFromJson, toJson: durationToJson) Duration? duration
});




}
/// @nodoc
class __$IcarStopDtoCopyWithImpl<$Res>
    implements _$IcarStopDtoCopyWith<$Res> {
  __$IcarStopDtoCopyWithImpl(this._self, this._then);

  final _IcarStopDto _self;
  final $Res Function(_IcarStopDto) _then;

/// Create a copy of IcarStopDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? coordinate = null,Object? distance = freezed,Object? routeStopWaypoints = freezed,Object? schedules = freezed,Object? duration = freezed,}) {
  return _then(_IcarStopDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,coordinate: null == coordinate ? _self.coordinate : coordinate // ignore: cast_nullable_to_non_nullable
as LatLng,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int?,routeStopWaypoints: freezed == routeStopWaypoints ? _self._routeStopWaypoints : routeStopWaypoints // ignore: cast_nullable_to_non_nullable
as List<RouteStopWaypointDto>?,schedules: freezed == schedules ? _self._schedules : schedules // ignore: cast_nullable_to_non_nullable
as List<ScheduleDto>?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

// dart format on

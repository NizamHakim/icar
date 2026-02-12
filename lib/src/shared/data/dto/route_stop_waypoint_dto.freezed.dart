// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_stop_waypoint_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteStopWaypointDto {

 int get id; int get icarRouteId; int get icarStopId; int get order;// optional
 IcarRouteDto? get icarRoute; IcarStopDto? get icarStop;
/// Create a copy of RouteStopWaypointDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteStopWaypointDtoCopyWith<RouteStopWaypointDto> get copyWith => _$RouteStopWaypointDtoCopyWithImpl<RouteStopWaypointDto>(this as RouteStopWaypointDto, _$identity);

  /// Serializes this RouteStopWaypointDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteStopWaypointDto&&(identical(other.id, id) || other.id == id)&&(identical(other.icarRouteId, icarRouteId) || other.icarRouteId == icarRouteId)&&(identical(other.icarStopId, icarStopId) || other.icarStopId == icarStopId)&&(identical(other.order, order) || other.order == order)&&(identical(other.icarRoute, icarRoute) || other.icarRoute == icarRoute)&&(identical(other.icarStop, icarStop) || other.icarStop == icarStop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,icarRouteId,icarStopId,order,icarRoute,icarStop);

@override
String toString() {
  return 'RouteStopWaypointDto(id: $id, icarRouteId: $icarRouteId, icarStopId: $icarStopId, order: $order, icarRoute: $icarRoute, icarStop: $icarStop)';
}


}

/// @nodoc
abstract mixin class $RouteStopWaypointDtoCopyWith<$Res>  {
  factory $RouteStopWaypointDtoCopyWith(RouteStopWaypointDto value, $Res Function(RouteStopWaypointDto) _then) = _$RouteStopWaypointDtoCopyWithImpl;
@useResult
$Res call({
 int id, int icarRouteId, int icarStopId, int order, IcarRouteDto? icarRoute, IcarStopDto? icarStop
});


$IcarRouteDtoCopyWith<$Res>? get icarRoute;$IcarStopDtoCopyWith<$Res>? get icarStop;

}
/// @nodoc
class _$RouteStopWaypointDtoCopyWithImpl<$Res>
    implements $RouteStopWaypointDtoCopyWith<$Res> {
  _$RouteStopWaypointDtoCopyWithImpl(this._self, this._then);

  final RouteStopWaypointDto _self;
  final $Res Function(RouteStopWaypointDto) _then;

/// Create a copy of RouteStopWaypointDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? icarRouteId = null,Object? icarStopId = null,Object? order = null,Object? icarRoute = freezed,Object? icarStop = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,icarRouteId: null == icarRouteId ? _self.icarRouteId : icarRouteId // ignore: cast_nullable_to_non_nullable
as int,icarStopId: null == icarStopId ? _self.icarStopId : icarStopId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,icarRoute: freezed == icarRoute ? _self.icarRoute : icarRoute // ignore: cast_nullable_to_non_nullable
as IcarRouteDto?,icarStop: freezed == icarStop ? _self.icarStop : icarStop // ignore: cast_nullable_to_non_nullable
as IcarStopDto?,
  ));
}
/// Create a copy of RouteStopWaypointDto
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
}/// Create a copy of RouteStopWaypointDto
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

class _RouteStopWaypointDto extends RouteStopWaypointDto {
  const _RouteStopWaypointDto({required this.id, required this.icarRouteId, required this.icarStopId, required this.order, this.icarRoute, this.icarStop}): super._();
  factory _RouteStopWaypointDto.fromJson(Map<String, dynamic> json) => _$RouteStopWaypointDtoFromJson(json);

@override final  int id;
@override final  int icarRouteId;
@override final  int icarStopId;
@override final  int order;
// optional
@override final  IcarRouteDto? icarRoute;
@override final  IcarStopDto? icarStop;

/// Create a copy of RouteStopWaypointDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteStopWaypointDtoCopyWith<_RouteStopWaypointDto> get copyWith => __$RouteStopWaypointDtoCopyWithImpl<_RouteStopWaypointDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteStopWaypointDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteStopWaypointDto&&(identical(other.id, id) || other.id == id)&&(identical(other.icarRouteId, icarRouteId) || other.icarRouteId == icarRouteId)&&(identical(other.icarStopId, icarStopId) || other.icarStopId == icarStopId)&&(identical(other.order, order) || other.order == order)&&(identical(other.icarRoute, icarRoute) || other.icarRoute == icarRoute)&&(identical(other.icarStop, icarStop) || other.icarStop == icarStop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,icarRouteId,icarStopId,order,icarRoute,icarStop);

@override
String toString() {
  return 'RouteStopWaypointDto(id: $id, icarRouteId: $icarRouteId, icarStopId: $icarStopId, order: $order, icarRoute: $icarRoute, icarStop: $icarStop)';
}


}

/// @nodoc
abstract mixin class _$RouteStopWaypointDtoCopyWith<$Res> implements $RouteStopWaypointDtoCopyWith<$Res> {
  factory _$RouteStopWaypointDtoCopyWith(_RouteStopWaypointDto value, $Res Function(_RouteStopWaypointDto) _then) = __$RouteStopWaypointDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int icarRouteId, int icarStopId, int order, IcarRouteDto? icarRoute, IcarStopDto? icarStop
});


@override $IcarRouteDtoCopyWith<$Res>? get icarRoute;@override $IcarStopDtoCopyWith<$Res>? get icarStop;

}
/// @nodoc
class __$RouteStopWaypointDtoCopyWithImpl<$Res>
    implements _$RouteStopWaypointDtoCopyWith<$Res> {
  __$RouteStopWaypointDtoCopyWithImpl(this._self, this._then);

  final _RouteStopWaypointDto _self;
  final $Res Function(_RouteStopWaypointDto) _then;

/// Create a copy of RouteStopWaypointDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? icarRouteId = null,Object? icarStopId = null,Object? order = null,Object? icarRoute = freezed,Object? icarStop = freezed,}) {
  return _then(_RouteStopWaypointDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,icarRouteId: null == icarRouteId ? _self.icarRouteId : icarRouteId // ignore: cast_nullable_to_non_nullable
as int,icarStopId: null == icarStopId ? _self.icarStopId : icarStopId // ignore: cast_nullable_to_non_nullable
as int,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,icarRoute: freezed == icarRoute ? _self.icarRoute : icarRoute // ignore: cast_nullable_to_non_nullable
as IcarRouteDto?,icarStop: freezed == icarStop ? _self.icarStop : icarStop // ignore: cast_nullable_to_non_nullable
as IcarStopDto?,
  ));
}

/// Create a copy of RouteStopWaypointDto
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
}/// Create a copy of RouteStopWaypointDto
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

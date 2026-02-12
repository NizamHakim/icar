// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icar_route_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IcarRouteDto _$IcarRouteDtoFromJson(Map<String, dynamic> json) =>
    _IcarRouteDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      color: colorFromJson(json['color'] as String),
      icars:
          (json['icars'] as List<dynamic>?)
              ?.map((e) => IcarDto.fromJson(e as Map<String, dynamic>))
              .toList(),
      routeStopWaypoints:
          (json['routeStopWaypoints'] as List<dynamic>?)
              ?.map(
                (e) => RouteStopWaypointDto.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      polylinePoints: listLatLngFromJson(json['polylinePoints'] as List?),
    );

Map<String, dynamic> _$IcarRouteDtoToJson(_IcarRouteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToJson(instance.color),
      'icars': instance.icars,
      'routeStopWaypoints': instance.routeStopWaypoints,
      'polylinePoints': listLatLngToJson(instance.polylinePoints),
    };

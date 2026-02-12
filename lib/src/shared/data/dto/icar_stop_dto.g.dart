// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icar_stop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IcarStopDto _$IcarStopDtoFromJson(Map<String, dynamic> json) => _IcarStopDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  coordinate: latLngFromJson(json['coordinate'] as Map<String, dynamic>),
  distance: (json['distance'] as num?)?.toInt(),
  routeStopWaypoints:
      (json['routeStopWaypoints'] as List<dynamic>?)
          ?.map((e) => RouteStopWaypointDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  schedules:
      (json['schedules'] as List<dynamic>?)
          ?.map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  duration: durationFromJson((json['duration'] as num?)?.toInt()),
);

Map<String, dynamic> _$IcarStopDtoToJson(_IcarStopDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coordinate': latLngToJson(instance.coordinate),
      'distance': instance.distance,
      'routeStopWaypoints': instance.routeStopWaypoints,
      'schedules': instance.schedules,
      'duration': durationToJson(instance.duration),
    };

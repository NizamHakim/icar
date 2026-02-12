// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icar_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IcarDto _$IcarDtoFromJson(Map<String, dynamic> json) => _IcarDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  capacity: (json['capacity'] as num).toInt(),
  status: $enumDecode(_$IcarStatusEnumMap, json['status']),
  icarRouteId: (json['icarRouteId'] as num).toInt(),
  icarRoute:
      json['icarRoute'] == null
          ? null
          : IcarRouteDto.fromJson(json['icarRoute'] as Map<String, dynamic>),
  schedules:
      (json['schedules'] as List<dynamic>?)
          ?.map((e) => ScheduleDto.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$IcarDtoToJson(_IcarDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'capacity': instance.capacity,
  'status': _$IcarStatusEnumMap[instance.status]!,
  'icarRouteId': instance.icarRouteId,
  'icarRoute': instance.icarRoute,
  'schedules': instance.schedules,
};

const _$IcarStatusEnumMap = {
  IcarStatus.ACTIVE: 'ACTIVE',
  IcarStatus.INACTIVE: 'INACTIVE',
};

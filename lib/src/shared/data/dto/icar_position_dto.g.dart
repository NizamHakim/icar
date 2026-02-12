// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icar_position_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IcarPositionDto _$IcarPositionDtoFromJson(Map<String, dynamic> json) =>
    _IcarPositionDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      position: positionFromJson(json['position'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$IcarPositionDtoToJson(_IcarPositionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': positionToJson(instance.position),
    };

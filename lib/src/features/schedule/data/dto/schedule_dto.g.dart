// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) => _ScheduleDto(
  id: (json['id'] as num).toInt(),
  session: $enumDecode(_$ScheduleSessionEnumMap, json['session']),
  arrivalTime: DateTime.parse(json['arrivalTime'] as String),
  icarId: (json['icarId'] as num).toInt(),
  icarStopId: (json['icarStopId'] as num).toInt(),
  icar:
      json['icar'] == null
          ? null
          : IcarDto.fromJson(json['icar'] as Map<String, dynamic>),
  icarStop:
      json['icarStop'] == null
          ? null
          : IcarStopDto.fromJson(json['icarStop'] as Map<String, dynamic>),
  ticketCount: (json['ticketCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ScheduleDtoToJson(_ScheduleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': _$ScheduleSessionEnumMap[instance.session]!,
      'arrivalTime': instance.arrivalTime.toIso8601String(),
      'icarId': instance.icarId,
      'icarStopId': instance.icarStopId,
      'icar': instance.icar,
      'icarStop': instance.icarStop,
      'ticketCount': instance.ticketCount,
    };

const _$ScheduleSessionEnumMap = {
  ScheduleSession.SESSION_1: 'SESSION_1',
  ScheduleSession.SESSION_2: 'SESSION_2',
};

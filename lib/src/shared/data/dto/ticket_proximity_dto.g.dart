// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_proximity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketProximityDto _$TicketProximityDtoFromJson(Map<String, dynamic> json) =>
    _TicketProximityDto(
      ticketId: (json['ticketId'] as num).toInt(),
      distance: (json['distance'] as num).toInt(),
    );

Map<String, dynamic> _$TicketProximityDtoToJson(_TicketProximityDto instance) =>
    <String, dynamic>{
      'ticketId': instance.ticketId,
      'distance': instance.distance,
    };

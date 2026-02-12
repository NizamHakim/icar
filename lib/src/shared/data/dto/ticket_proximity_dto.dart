import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/shared/domain/entities/ticket_proximity.dart';

part 'ticket_proximity_dto.freezed.dart';
part 'ticket_proximity_dto.g.dart';

@freezed
abstract class TicketProximityDto with _$TicketProximityDto {
  const TicketProximityDto._();

  const factory TicketProximityDto({
    required int ticketId,
    required int distance,
  }) = _TicketProximityDto;

  factory TicketProximityDto.fromJson(Map<String, Object?> json) =>
      _$TicketProximityDtoFromJson(json);

  TicketProximity toEntity() {
    return TicketProximity(ticketId: ticketId, distance: distance);
  }
}

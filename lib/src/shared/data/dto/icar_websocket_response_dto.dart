import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/shared/data/dto/icar_position_dto.dart';
import 'package:icar/src/shared/data/dto/ticket_proximity_dto.dart';

part 'icar_websocket_response_dto.freezed.dart';
part 'icar_websocket_response_dto.g.dart';

@Freezed(unionKey: 'type')
sealed class IcarWebsocketResponseDto with _$IcarWebsocketResponseDto {
  const factory IcarWebsocketResponseDto.position({
    required String type,
    required IcarPositionDto icarPosition,
    required List<TicketProximityDto> ticketsProximity,
  }) = IcarPositionWebsocketResponse;
  const factory IcarWebsocketResponseDto.disconnect({
    required String type,
    required IcarPositionDto icarPosition,
    required int canceledTickets,
  }) = IcarDisconnectedWebsocketResponse;

  factory IcarWebsocketResponseDto.fromJson(Map<String, dynamic> json) =>
      _$IcarWebsocketResponseDtoFromJson(json);
}

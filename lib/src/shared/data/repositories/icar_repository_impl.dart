import 'package:fpdart/fpdart.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/shared/data/datasources/icar_remote_datasource.dart';
import 'package:icar/src/shared/data/datasources/icar_websocket_datasource.dart';
import 'package:icar/src/shared/data/dto/icar_websocket_response_dto.dart';
import 'package:icar/src/shared/domain/entities/icar.dart';
import 'package:icar/src/shared/domain/entities/icar_position.dart';
import 'package:icar/src/shared/domain/entities/ticket_proximity.dart';
import 'package:icar/src/shared/domain/repositories/icar_repository.dart';

class IcarRepositoryImpl extends IcarRepository {
  final IcarRemoteDatasource _icarRemote;
  final IcarWebsocketDatasource _icarWebsocket;

  IcarRepositoryImpl(this._icarRemote, this._icarWebsocket);

  @override
  Future<Either<Failure, List<Icar>>> getIcarsWithSchedulesByStopId(
    String token, {
    required int icarStopId,
  }) async {
    try {
      final result = await _icarRemote.getIcars(token, icarStopId: icarStopId);
      return Right(result.map((icarDto) => icarDto.toEntity()).toList());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Stream<(String, IcarPosition, int?)> getIcarPositionStream() async* {
    await for (final icarWebsocketResponseDto in _icarWebsocket.stream) {
      if (icarWebsocketResponseDto case IcarPositionWebsocketResponse()) {
        yield (
          icarWebsocketResponseDto.type,
          icarWebsocketResponseDto.icarPosition.toEntity(),
          null,
        );
      } else if (icarWebsocketResponseDto
          case IcarDisconnectedWebsocketResponse()) {
        yield (
          icarWebsocketResponseDto.type,
          icarWebsocketResponseDto.icarPosition.toEntity(),
          icarWebsocketResponseDto.canceledTickets,
        );
      }
    }
  }

  @override
  Stream<List<TicketProximity>> getTicketsProximityStream() async* {
    await for (final icarWebsocketResponseDto in _icarWebsocket.stream) {
      if (icarWebsocketResponseDto case IcarPositionWebsocketResponse()) {
        yield icarWebsocketResponseDto.ticketsProximity
            .map((ticketProximity) => ticketProximity.toEntity())
            .toList();
      }
    }
  }
}

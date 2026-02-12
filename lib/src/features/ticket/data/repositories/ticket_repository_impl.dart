import 'package:fpdart/fpdart.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/ticket/data/datasources/ticket_remote_datasource.dart';
import 'package:icar/src/features/ticket/data/dto/review_dto.dart';
import 'package:icar/src/features/ticket/domain/entities/review.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';

class TicketRepositoryImpl extends TicketRepository {
  final TicketRemoteDatasource _ticketRemote;

  TicketRepositoryImpl(this._ticketRemote);

  @override
  Future<Either<Failure, Ticket?>> getClosestTicket(String token) async {
    try {
      final result = await _ticketRemote.getTickets(
        token,
        status: TicketStatus.IN_QUEUE,
      );
      return Right(result.isNotEmpty ? result[0].toEntity() : null);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<Ticket>>> getTicketsByStatus(
    String token, {
    required TicketStatus status,
  }) async {
    try {
      final result = await _ticketRemote.getTickets(token, status: status);
      return Right(result.map((ticketDto) => ticketDto.toEntity()).toList());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, Ticket>> getTicket(
    String token, {
    required int ticketId,
  }) async {
    try {
      final result = await _ticketRemote.getTicketById(
        token,
        ticketId: ticketId,
      );
      return Right(result.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, Ticket>> cancelTicket(
    String token, {
    required int ticketId,
  }) async {
    try {
      final ticketDto = await _ticketRemote.updateTicket(
        token,
        ticketId,
        newStatus: TicketStatus.CANCELED,
      );
      return Right(ticketDto.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, Ticket>> createTicket(
    String token, {
    required int scheduleId,
  }) async {
    try {
      final ticketDto = await _ticketRemote.createTicket(
        token,
        scheduleId: scheduleId,
      );
      return Right(ticketDto.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, Ticket>> updateStatus(
    String token, {
    required int ticketId,
    required TicketStatus status,
  }) async {
    try {
      final ticketDto = await _ticketRemote.updateTicket(
        token,
        ticketId,
        newStatus: status,
      );
      return Right(ticketDto.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, Ticket>> updateReview(
    String token, {
    required int ticketId,
    required Review review,
  }) async {
    try {
      final ticketDto = await _ticketRemote.updateTicket(
        token,
        ticketId,
        newReview: ReviewDto.fromEntity(review),
      );
      return Right(ticketDto.toEntity());
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}

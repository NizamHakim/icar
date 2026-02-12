import 'package:fpdart/src/either.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/ticket/domain/entities/review.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:icar/src/utils/fake_data.dart';

class TicketRepositoryMock extends TicketRepository {
  @override
  Future<Either<Failure, Ticket>> cancelTicket(
    String token, {
    required int ticketId,
  }) async {
    return Right(fakeTicket);
  }

  @override
  Future<Either<Failure, Ticket>> createTicket(
    String token, {
    required int scheduleId,
  }) async {
    return Right(fakeTicket);
  }

  @override
  Future<Either<Failure, Ticket?>> getClosestTicket(String token) async {
    return Right(
      fakeTicket.copyWith(
        schedule: fakeSchedule1.copyWith(
          icarStop: fakeIcarStop,
          icar: fakeIcar.copyWith(icarRoute: fakeIcarRoute),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, Ticket>> getTicket(
    String token, {
    required int ticketId,
  }) async {
    return Right(
      fakeTicket.copyWith(
        schedule: fakeSchedule1.copyWith(
          icarStop: fakeIcarStop,
          icar: fakeIcar.copyWith(icarRoute: fakeIcarRoute),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, List<Ticket>>> getTicketsByStatus(
    String token, {
    required TicketStatus status,
  }) async {
    return Right(
      List.generate(
        3,
        (index) => fakeTicket.copyWith(
          status: status,
          schedule: fakeSchedule1.copyWith(
            icarStop: fakeIcarStop,
            icar: fakeIcar.copyWith(icarRoute: fakeIcarRoute),
          ),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, Ticket>> updateReview(
    String token, {
    required int ticketId,
    required Review review,
  }) async {
    return Right(
      fakeTicket.copyWith(
        schedule: fakeSchedule1.copyWith(
          icarStop: fakeIcarStop,
          icar: fakeIcar.copyWith(icarRoute: fakeIcarRoute),
        ),
        review: review,
      ),
    );
  }

  @override
  Future<Either<Failure, Ticket>> updateStatus(
    String token, {
    required int ticketId,
    required TicketStatus status,
  }) async {
    return Right(
      fakeTicket.copyWith(
        status: status,
        schedule: fakeSchedule1.copyWith(
          icarStop: fakeIcarStop,
          icar: fakeIcar.copyWith(icarRoute: fakeIcarRoute),
        ),
      ),
    );
  }
}

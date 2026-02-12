import 'package:fpdart/fpdart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: unused_import
import 'package:icar/src/features/ticket/data/repositories/ticket_repository_mock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/ticket/data/datasources/ticket_remote_datasource.dart';
import 'package:icar/src/features/ticket/data/repositories/ticket_repository_impl.dart';
import 'package:icar/src/features/ticket/domain/entities/review.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';

part 'ticket_repository.g.dart';

@riverpod
TicketRepository ticketRepository(Ref ref) {
  final ticketRemoteDatasource = ref.watch(ticketRemoteDatasourceProvider);
  return TicketRepositoryImpl(ticketRemoteDatasource);
  // return TicketRepositoryMock();
}

abstract class TicketRepository {
  Future<Either<Failure, Ticket?>> getClosestTicket(String token);

  Future<Either<Failure, List<Ticket>>> getTicketsByStatus(
    String token, {
    required TicketStatus status,
  });

  Future<Either<Failure, Ticket>> getTicket(
    String token, {
    required int ticketId,
  });

  Future<Either<Failure, Ticket>> createTicket(
    String token, {
    required int scheduleId,
  });

  Future<Either<Failure, Ticket>> cancelTicket(
    String token, {
    required int ticketId,
  });

  Future<Either<Failure, Ticket>> updateStatus(
    String token, {
    required int ticketId,
    required TicketStatus status,
  });

  Future<Either<Failure, Ticket>> updateReview(
    String token, {
    required int ticketId,
    required Review review,
  });
}

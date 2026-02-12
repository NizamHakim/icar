import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tickets_by_status.g.dart';

@riverpod
Future<List<Ticket>> ticketsByStatus(Ref ref, TicketStatus status) async {
  final currentUser = ref.watch(currentUserProvider).requireValue!;
  final ticketRepository = ref.watch(ticketRepositoryProvider);

  final ticketsEither = await ticketRepository.getTicketsByStatus(
    currentUser.token,
    status: status,
  );

  return ticketsEither.fold(
    (failure) {
      throw failure;
    },
    (tickets) {
      return tickets;
    },
  );
}

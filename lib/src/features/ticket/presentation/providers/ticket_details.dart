import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_details.g.dart';

@riverpod
Future<Ticket> ticketDetails(Ref ref, int ticketId) async {
  final currentUser = ref.watch(currentUserProvider).requireValue!;
  final ticketRepository = ref.watch(ticketRepositoryProvider);
  final ticketEither = await ticketRepository.getTicket(
    currentUser.token,
    ticketId: ticketId,
  );

  return ticketEither.fold(
    (failure) {
      throw failure;
    },
    (ticket) {
      return ticket;
    },
  );
}

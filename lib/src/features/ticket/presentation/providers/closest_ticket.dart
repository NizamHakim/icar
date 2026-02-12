import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'closest_ticket.g.dart';

@riverpod
Future<Ticket?> closestTicket(Ref ref) async {
  final currentUser = ref.watch(currentUserProvider).requireValue!;
  final ticketRepository = ref.watch(ticketRepositoryProvider);
  final closestTicketEither = await ticketRepository.getClosestTicket(
    currentUser.token,
  );

  return closestTicketEither.fold(
    (failure) {
      throw failure;
    },
    (closestTicket) {
      return closestTicket;
    },
  );
}

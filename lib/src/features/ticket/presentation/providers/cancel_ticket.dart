import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:icar/src/features/ticket/presentation/providers/refresh_tickets_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cancel_ticket.g.dart';

@riverpod
class CancelTicket extends _$CancelTicket {
  @override
  FutureOr<Ticket?> build() {
    return null;
  }

  Future<void> cancelTicket(int ticketId) async {
    state = const AsyncLoading();
    final ticketRepository = ref.read(ticketRepositoryProvider);
    final currentUser = ref.read(currentUserProvider).requireValue!;
    final ticketEither = await ticketRepository.cancelTicket(
      currentUser.token,
      ticketId: ticketId,
    );

    ticketEither.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        // showSnackBar(
        //   navigatorKey.currentContext!,
        //   FailureLocalizations.of(
        //     navigatorKey.currentContext!,
        //   )!.failure(failure.message),
        // );
      },
      (data) {
        final ticket = data;
        state = AsyncData(ticket);
        refreshTicketById(ref, ticket.id);
        refreshTicketsState(ref);
        // showSnackBar(
        //   navigatorKey.currentContext!,
        //   TicketLocalizations.of(
        //     navigatorKey.currentContext!,
        //   )!.ticketSuccess(message),
        // );
      },
    );
  }
}

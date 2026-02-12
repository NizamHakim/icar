import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:icar/src/features/ticket/presentation/providers/refresh_tickets_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_ticket.g.dart';

@riverpod
class CreateTicket extends _$CreateTicket {
  @override
  FutureOr<Ticket?> build() {
    return null;
  }

  Future<void> createTicket(int scheduleId) async {
    final currentUser = ref.watch(currentUserProvider).requireValue!;
    final ticketRepository = ref.read(ticketRepositoryProvider);
    state = const AsyncLoading();

    final ticketEither = await ticketRepository.createTicket(
      currentUser.token,
      scheduleId: scheduleId,
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

import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/ticket/domain/entities/review.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/repositories/ticket_repository.dart';
import 'package:icar/src/features/ticket/presentation/providers/rating.dart';
import 'package:icar/src/features/ticket/presentation/providers/refresh_tickets_state.dart';
import 'package:icar/src/features/ticket/presentation/providers/review_options.dart';
import 'package:icar/src/features/ticket/presentation/providers/suggestion.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_ticket.g.dart';

@riverpod
class IsDoingReview extends _$IsDoingReview {
  @override
  bool build() {
    return false;
  }

  void setState(bool isDoingReview) {
    state = isDoingReview;
  }
}

@riverpod
class UpdateReview extends _$UpdateReview {
  @override
  FutureOr<Ticket?> build() {
    return null;
  }

  Future<void> updateReview(Ticket ticket) async {
    final ticketRepository = ref.read(ticketRepositoryProvider);
    final currentUser = ref.read(currentUserProvider).requireValue!;
    state = const AsyncValue.loading();

    final rating = ref.read(ratingProvider);
    final selectedReview = ref.read(selectedReviewProvider);
    final suggestion = ref.read(suggestionProvider);

    final newReview = Review(
      rating: rating,
      review: selectedReview,
      suggestion: suggestion,
    );

    final updateReviewEither = await ticketRepository.updateReview(
      currentUser.token,
      ticketId: ticket.id,
      review: newReview,
    );

    updateReviewEither.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
        // showSnackBar(
        //   navigatorKey.currentContext!,
        //   FailureLocalizations.of(
        //     navigatorKey.currentContext!,
        //   )!.failure(failure.message),
        // );
      },
      (data) {
        final ticket = data;
        state = AsyncValue.data(ticket);
        ref.read(isDoingReviewProvider.notifier).setState(false);
        refreshTicketById(ref, ticket.id);
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

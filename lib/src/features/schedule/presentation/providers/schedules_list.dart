import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/schedule/domain/entities/schedule.dart';
import 'package:icar/src/features/schedule/domain/repositories/schedule_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'schedules_list.g.dart';

@riverpod
Future<List<Schedule>> schedulesList(
  Ref ref, {
  required int icarStopId,
  required int icarRouteId,
}) async {
  final currentUser = ref.watch(currentUserProvider).requireValue!;
  final scheduleRepository = ref.watch(scheduleRepositoryProvider);
  final scheduleEither = await scheduleRepository.getSchedulesByStopAndRoute(
    currentUser.token,
    icarStopId: icarStopId,
    icarRouteId: icarRouteId,
  );

  return scheduleEither.fold(
    (failure) {
      throw failure;
    },
    (schedule) {
      return schedule;
    },
  );
}

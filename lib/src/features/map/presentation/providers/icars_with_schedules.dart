import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/shared/domain/entities/icar.dart';
import 'package:icar/src/shared/domain/repositories/icar_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'icars_with_schedules.g.dart';

@riverpod
Future<List<Icar>> icarsWithSchedules(
  Ref ref, {
  required int icarStopId,
}) async {
  final currentUser = ref.watch(currentUserProvider).requireValue!;
  final icarRepository = ref.watch(icarRepositoryProvider);
  final icarsEither = await icarRepository.getIcarsWithSchedulesByStopId(
    currentUser.token,
    icarStopId: icarStopId,
  );

  return icarsEither.fold(
    (failure) {
      throw failure;
    },
    (icars) {
      return icars;
    },
  );
}

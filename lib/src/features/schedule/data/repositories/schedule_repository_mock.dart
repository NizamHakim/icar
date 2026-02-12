import 'package:fpdart/fpdart.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/features/schedule/domain/entities/schedule.dart';
import 'package:icar/src/features/schedule/domain/repositories/schedule_repository.dart';
import 'package:icar/src/utils/fake_data.dart';

class ScheduleRepositoryMock extends ScheduleRepository {
  @override
  Future<Either<Failure, List<Schedule>>> getSchedulesByStopAndRoute(
    String token, {
    required int icarStopId,
    required int icarRouteId,
  }) async {
    return Right(
      List.generate(
        6,
        (index) => fakeSchedule1.copyWith(
          icar: fakeIcar.copyWith(icarRoute: fakeIcarRoute),
          icarStop: fakeIcarStop,
        ),
      ),
    );
  }
}

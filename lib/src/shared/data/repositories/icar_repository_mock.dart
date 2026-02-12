import 'package:fpdart/src/either.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/shared/domain/entities/icar.dart';
import 'package:icar/src/shared/domain/entities/icar_position.dart';
import 'package:icar/src/shared/domain/entities/ticket_proximity.dart';
import 'package:icar/src/shared/domain/repositories/icar_repository.dart';
import 'package:icar/src/utils/fake_data.dart';

class IcarRepositoryMock extends IcarRepository {
  @override
  Stream<(String, IcarPosition, int?)> getIcarPositionStream() {
    // TODO: implement getIcarPositionStream
    // throw UnimplementedError();
    return Stream.fromIterable([]);
  }

  @override
  Future<Either<Failure, List<Icar>>> getIcarsWithSchedulesByStopId(
    String token, {
    required int icarStopId,
  }) async {
    return Right([
      fakeIcar.copyWith(
        icarRoute: fakeIcarRoute,
        schedules: List.generate(10, (index) {
          return (index < 5) ? fakeSchedule1 : fakeSchedule2;
        }),
      ),
    ]);
  }

  @override
  Stream<List<TicketProximity>> getTicketsProximityStream() {
    // TODO: implement getTicketsProximityStream
    throw UnimplementedError();
  }
}

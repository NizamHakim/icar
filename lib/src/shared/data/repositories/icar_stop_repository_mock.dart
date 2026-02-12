import 'package:fpdart/src/either.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/shared/data/datasources/icar_stop_local_datasource.dart';
import 'package:icar/src/shared/domain/entities/icar_stop.dart';
import 'package:icar/src/shared/domain/repositories/icar_stop_repository.dart';
import 'package:icar/src/utils/fake_data.dart';

class IcarStopRepositoryMock extends IcarStopRepository {
  final IcarStopLocalDatasource _icarStopLocal;

  IcarStopRepositoryMock(this._icarStopLocal);

  @override
  void addStopToHistory(int stopId) {
    _icarStopLocal.addStopId(stopId);
  }

  @override
  Future<Either<Failure, IcarStop>> getStopById(
    String token, {
    required Position userPosition,
    required int icarStopId,
  }) async {
    return Right(fakeIcarStop);
  }

  @override
  Future<Either<Failure, List<IcarStop>>> getStops(
    String token, {
    required Position userPosition,
  }) async {
    return Right(
      List.generate(12, (index) => fakeIcarStop.copyWith(id: index)),
    );
  }

  @override
  List<int> getStopsHistory() {
    return _icarStopLocal.getStopsId();
  }
}

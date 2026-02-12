import 'package:fpdart/src/either.dart';
import 'package:icar/src/core/errors/failure.dart';
import 'package:icar/src/shared/domain/entities/icar_route.dart';
import 'package:icar/src/shared/domain/repositories/icar_route_repository.dart';
import 'package:icar/src/utils/fake_data.dart';
import 'package:latlong2/latlong.dart';

class IcarRouteRepositoryMock extends IcarRouteRepository {
  @override
  Future<Either<Failure, IcarRoute>> getRouteById(
    String token, {
    required int icarRouteId,
  }) async {
    return Right(fakeIcarRoute.copyWith(id: icarRouteId));
  }

  @override
  Future<Either<Failure, List<IcarRoute>>> getRoutes(
    String token, {
    required bool polyline,
  }) async {
    if (polyline) {
      return Right(
        List.generate(
          2,
          (index) => fakeIcarRoute.copyWith(
            id: index,
            polylinePoints: [const LatLng(0, 0)],
          ),
        ),
      );
    } else {
      return Right(
        List.generate(2, (index) => fakeIcarRoute.copyWith(id: index)),
      );
    }
  }
}

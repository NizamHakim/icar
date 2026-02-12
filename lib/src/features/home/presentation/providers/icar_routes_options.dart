import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/shared/domain/entities/icar_route.dart';
import 'package:icar/src/shared/domain/repositories/icar_route_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'icar_routes_options.g.dart';

@riverpod
Future<List<IcarRoute>> icarRoutesOptions(Ref ref) async {
  final currentUser = ref.watch(currentUserProvider).requireValue!;
  final icarRouteRepository = ref.watch(icarRouteRepositoryProvider);
  final icarRoutesOptionsEither = await icarRouteRepository.getRoutes(
    currentUser.token,
    polyline: false,
  );

  return icarRoutesOptionsEither.fold(
    (failure) {
      throw failure;
    },
    (icarRoutesOptions) {
      return icarRoutesOptions;
    },
  );
}

import 'package:icar/src/features/auth/presentation/providers/current_user.dart';
import 'package:icar/src/features/map/presentation/providers/state/route_visibility_state.dart';
import 'package:icar/src/shared/domain/repositories/icar_route_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes_visibility.g.dart';

@riverpod
class RoutesVisibility extends _$RoutesVisibility {
  @override
  Future<List<RouteVisibilityState>> build() async {
    final icarRouteRepository = ref.watch(icarRouteRepositoryProvider);
    final currentUser = ref.watch(currentUserProvider).requireValue!;

    final routesList = await icarRouteRepository.getRoutes(
      currentUser.token,
      polyline: true,
    );

    return routesList.fold(
      (failure) {
        throw failure;
      },
      (routeList) {
        return routeList
            .map((route) => RouteVisibilityState(route: route, visible: true))
            .toList();
      },
    );
  }

  void toggleRouteVisibility({required RouteVisibilityState routeState}) async {
    final currentState = state;

    if (currentState is! AsyncData<List<RouteVisibilityState>>) return;

    state = AsyncData(
      currentState.value.map((route) {
        if (route.route.id == routeState.route.id) {
          return route.copyWith(visible: !route.visible);
        }
        return route;
      }).toList(),
    );
  }
}

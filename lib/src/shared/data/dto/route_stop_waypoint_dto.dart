import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/shared/data/dto/icar_route_dto.dart';
import 'package:icar/src/shared/data/dto/icar_stop_dto.dart';
import 'package:icar/src/shared/domain/entities/route_stop_waypoint.dart';

part 'route_stop_waypoint_dto.freezed.dart';
part 'route_stop_waypoint_dto.g.dart';

@freezed
abstract class RouteStopWaypointDto with _$RouteStopWaypointDto {
  const RouteStopWaypointDto._();

  const factory RouteStopWaypointDto({
    required int id,
    required int icarRouteId,
    required int icarStopId,
    required int order,
    // optional
    IcarRouteDto? icarRoute,
    IcarStopDto? icarStop,
  }) = _RouteStopWaypointDto;

  factory RouteStopWaypointDto.fromJson(Map<String, Object?> json) =>
      _$RouteStopWaypointDtoFromJson(json);

  RouteStopWaypoint toEntity() {
    return RouteStopWaypoint(
      id: id,
      icarRouteId: icarRouteId,
      icarStopId: icarStopId,
      order: order,
      icarRoute: icarRoute?.toEntity(),
      icarStop: icarStop?.toEntity(),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/features/schedule/data/dto/schedule_dto.dart';
import 'package:icar/src/shared/data/dto/route_stop_waypoint_dto.dart';
import 'package:icar/src/shared/domain/entities/icar_stop.dart';
import 'package:icar/src/utils/json_converter/duration_json_converter.dart';
import 'package:icar/src/utils/json_converter/latlng_json_converter.dart';
import 'package:latlong2/latlong.dart';

part 'icar_stop_dto.freezed.dart';
part 'icar_stop_dto.g.dart';

@freezed
abstract class IcarStopDto with _$IcarStopDto {
  const IcarStopDto._();

  const factory IcarStopDto({
    required int id,
    required String name,
    @JsonKey(fromJson: latLngFromJson, toJson: latLngToJson)
    required LatLng coordinate,
    // optional
    int? distance,
    List<RouteStopWaypointDto>? routeStopWaypoints,
    List<ScheduleDto>? schedules,
    @JsonKey(fromJson: durationFromJson, toJson: durationToJson)
    Duration? duration,
  }) = _IcarStopDto;

  factory IcarStopDto.fromJson(Map<String, Object?> json) =>
      _$IcarStopDtoFromJson(json);

  IcarStop toEntity() {
    return IcarStop(
      id: id,
      name: name,
      coordinate: coordinate,
      distance: distance,
      routeStopWaypoints:
          routeStopWaypoints?.map((rsw) => rsw.toEntity()).toList(),
      schedules: schedules?.map((schedule) => schedule.toEntity()).toList(),
      duration: duration,
    );
  }
}

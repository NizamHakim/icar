import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/features/schedule/data/dto/schedule_dto.dart';
import 'package:icar/src/shared/data/dto/icar_route_dto.dart';
import 'package:icar/src/shared/domain/entities/icar.dart';
import 'package:icar/src/shared/domain/entities/icar_status.dart';

part 'icar_dto.freezed.dart';
part 'icar_dto.g.dart';

@freezed
abstract class IcarDto with _$IcarDto {
  const IcarDto._();

  const factory IcarDto({
    required int id,
    required String name,
    required int capacity,
    required IcarStatus status,
    required int icarRouteId,
    IcarRouteDto? icarRoute,
    List<ScheduleDto>? schedules,
  }) = _IcarDto;

  factory IcarDto.fromJson(Map<String, Object?> json) =>
      _$IcarDtoFromJson(json);

  Icar toEntity() {
    return Icar(
      id: id,
      name: name,
      capacity: capacity,
      status: status,
      icarRouteId: icarRouteId,
      icarRoute: icarRoute?.toEntity(),
      schedules: schedules?.map((schedule) => schedule.toEntity()).toList(),
    );
  }
}

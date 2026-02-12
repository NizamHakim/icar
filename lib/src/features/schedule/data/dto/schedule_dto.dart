import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/features/schedule/domain/entities/schedule.dart';
import 'package:icar/src/features/schedule/domain/entities/schedule_session.dart';
import 'package:icar/src/shared/data/dto/icar_dto.dart';
import 'package:icar/src/shared/data/dto/icar_stop_dto.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
abstract class ScheduleDto with _$ScheduleDto {
  const ScheduleDto._();

  const factory ScheduleDto({
    required int id,
    required ScheduleSession session,
    required DateTime arrivalTime,
    required int icarId,
    required int icarStopId,
    IcarDto? icar,
    IcarStopDto? icarStop,
    int? ticketCount,
  }) = _ScheduleDto;

  factory ScheduleDto.fromJson(Map<String, Object?> json) =>
      _$ScheduleDtoFromJson(json);

  Schedule toEntity() {
    return Schedule(
      id: id,
      session: session,
      arrivalTime: arrivalTime,
      icarId: icarId,
      icarStopId: icarStopId,
      icar: icar?.toEntity(),
      icarStop: icarStop?.toEntity(),
      ticketCount: ticketCount,
    );
  }
}

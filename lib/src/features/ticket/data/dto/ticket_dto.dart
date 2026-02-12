import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/features/auth/data/dto/user_dto.dart';
import 'package:icar/src/features/schedule/data/dto/schedule_dto.dart';
import 'package:icar/src/features/ticket/data/dto/review_dto.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
abstract class TicketDto with _$TicketDto {
  const TicketDto._();

  const factory TicketDto({
    required int id,
    required DateTime arrivedAt,
    required DateTime expiredAt,
    required TicketStatus status,
    required int userId,
    required int scheduleId,
    UserDto? user,
    ScheduleDto? schedule,
    ReviewDto? review,
  }) = _TicketDto;

  factory TicketDto.fromJson(Map<String, Object?> json) =>
      _$TicketDtoFromJson(json);

  Ticket toEntity() {
    return Ticket(
      id: id,
      arrivedAt: arrivedAt,
      expiredAt: expiredAt,
      status: status,
      userId: userId,
      scheduleId: scheduleId,
      user: user?.toEntity(),
      schedule: schedule?.toEntity(),
      review: review?.toEntity(),
    );
  }
}

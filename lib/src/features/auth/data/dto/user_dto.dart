import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/ticket/data/dto/ticket_dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String token,
    required int id,
    required String name,
    required String email,
    List<TicketDto>? tickets,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, Object?> json) =>
      _$UserDtoFromJson(json);

  User toEntity() {
    return User(
      token: token,
      id: id,
      name: name,
      email: email,
      tickets: tickets?.map((ticket) => ticket.toEntity()).toList(),
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/utils/json_converter/status_code_converter.dart';

part 'server_response_dto.freezed.dart';
part 'server_response_dto.g.dart';

@freezed
abstract class ServerResponseDto with _$ServerResponseDto {
  const ServerResponseDto._();

  const factory ServerResponseDto({
    @JsonKey(fromJson: statusCodeConverter) required int statusCode,
    required dynamic data,
    String? message,
  }) = _ServerResponseDto;

  factory ServerResponseDto.fromJson(Map<String, Object?> json) =>
      _$ServerResponseDtoFromJson(json);
}

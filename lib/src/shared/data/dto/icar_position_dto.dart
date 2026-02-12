import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:icar/src/shared/domain/entities/icar_position.dart';
import 'package:icar/src/utils/json_converter/position_json_converter.dart';

part 'icar_position_dto.freezed.dart';
part 'icar_position_dto.g.dart';

@freezed
abstract class IcarPositionDto with _$IcarPositionDto {
  const IcarPositionDto._();

  const factory IcarPositionDto({
    required int id,
    String? name,
    @JsonKey(fromJson: positionFromJson, toJson: positionToJson)
    Position? position,
  }) = _IcarPositionDto;

  factory IcarPositionDto.fromJson(Map<String, Object?> json) =>
      _$IcarPositionDtoFromJson(json);

  IcarPosition toEntity() {
    return IcarPosition(id: id, name: name, position: position);
  }
}

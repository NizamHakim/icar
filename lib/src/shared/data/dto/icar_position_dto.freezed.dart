// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icar_position_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IcarPositionDto {

 int get id; String? get name;@JsonKey(fromJson: positionFromJson, toJson: positionToJson) Position? get position;
/// Create a copy of IcarPositionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IcarPositionDtoCopyWith<IcarPositionDto> get copyWith => _$IcarPositionDtoCopyWithImpl<IcarPositionDto>(this as IcarPositionDto, _$identity);

  /// Serializes this IcarPositionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IcarPositionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,position);

@override
String toString() {
  return 'IcarPositionDto(id: $id, name: $name, position: $position)';
}


}

/// @nodoc
abstract mixin class $IcarPositionDtoCopyWith<$Res>  {
  factory $IcarPositionDtoCopyWith(IcarPositionDto value, $Res Function(IcarPositionDto) _then) = _$IcarPositionDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? name,@JsonKey(fromJson: positionFromJson, toJson: positionToJson) Position? position
});




}
/// @nodoc
class _$IcarPositionDtoCopyWithImpl<$Res>
    implements $IcarPositionDtoCopyWith<$Res> {
  _$IcarPositionDtoCopyWithImpl(this._self, this._then);

  final IcarPositionDto _self;
  final $Res Function(IcarPositionDto) _then;

/// Create a copy of IcarPositionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IcarPositionDto extends IcarPositionDto {
  const _IcarPositionDto({required this.id, this.name, @JsonKey(fromJson: positionFromJson, toJson: positionToJson) this.position}): super._();
  factory _IcarPositionDto.fromJson(Map<String, dynamic> json) => _$IcarPositionDtoFromJson(json);

@override final  int id;
@override final  String? name;
@override@JsonKey(fromJson: positionFromJson, toJson: positionToJson) final  Position? position;

/// Create a copy of IcarPositionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IcarPositionDtoCopyWith<_IcarPositionDto> get copyWith => __$IcarPositionDtoCopyWithImpl<_IcarPositionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IcarPositionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IcarPositionDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,position);

@override
String toString() {
  return 'IcarPositionDto(id: $id, name: $name, position: $position)';
}


}

/// @nodoc
abstract mixin class _$IcarPositionDtoCopyWith<$Res> implements $IcarPositionDtoCopyWith<$Res> {
  factory _$IcarPositionDtoCopyWith(_IcarPositionDto value, $Res Function(_IcarPositionDto) _then) = __$IcarPositionDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name,@JsonKey(fromJson: positionFromJson, toJson: positionToJson) Position? position
});




}
/// @nodoc
class __$IcarPositionDtoCopyWithImpl<$Res>
    implements _$IcarPositionDtoCopyWith<$Res> {
  __$IcarPositionDtoCopyWithImpl(this._self, this._then);

  final _IcarPositionDto _self;
  final $Res Function(_IcarPositionDto) _then;

/// Create a copy of IcarPositionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? position = freezed,}) {
  return _then(_IcarPositionDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,
  ));
}


}

// dart format on

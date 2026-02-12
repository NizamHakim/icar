// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServerResponseDto {

@JsonKey(fromJson: statusCodeConverter) int get statusCode; dynamic get data; String? get message;
/// Create a copy of ServerResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerResponseDtoCopyWith<ServerResponseDto> get copyWith => _$ServerResponseDtoCopyWithImpl<ServerResponseDto>(this as ServerResponseDto, _$identity);

  /// Serializes this ServerResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'ServerResponseDto(statusCode: $statusCode, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerResponseDtoCopyWith<$Res>  {
  factory $ServerResponseDtoCopyWith(ServerResponseDto value, $Res Function(ServerResponseDto) _then) = _$ServerResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: statusCodeConverter) int statusCode, dynamic data, String? message
});




}
/// @nodoc
class _$ServerResponseDtoCopyWithImpl<$Res>
    implements $ServerResponseDtoCopyWith<$Res> {
  _$ServerResponseDtoCopyWithImpl(this._self, this._then);

  final ServerResponseDto _self;
  final $Res Function(ServerResponseDto) _then;

/// Create a copy of ServerResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ServerResponseDto extends ServerResponseDto {
  const _ServerResponseDto({@JsonKey(fromJson: statusCodeConverter) required this.statusCode, required this.data, this.message}): super._();
  factory _ServerResponseDto.fromJson(Map<String, dynamic> json) => _$ServerResponseDtoFromJson(json);

@override@JsonKey(fromJson: statusCodeConverter) final  int statusCode;
@override final  dynamic data;
@override final  String? message;

/// Create a copy of ServerResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerResponseDtoCopyWith<_ServerResponseDto> get copyWith => __$ServerResponseDtoCopyWithImpl<_ServerResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerResponseDto&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,const DeepCollectionEquality().hash(data),message);

@override
String toString() {
  return 'ServerResponseDto(statusCode: $statusCode, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerResponseDtoCopyWith<$Res> implements $ServerResponseDtoCopyWith<$Res> {
  factory _$ServerResponseDtoCopyWith(_ServerResponseDto value, $Res Function(_ServerResponseDto) _then) = __$ServerResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: statusCodeConverter) int statusCode, dynamic data, String? message
});




}
/// @nodoc
class __$ServerResponseDtoCopyWithImpl<$Res>
    implements _$ServerResponseDtoCopyWith<$Res> {
  __$ServerResponseDtoCopyWithImpl(this._self, this._then);

  final _ServerResponseDto _self;
  final $Res Function(_ServerResponseDto) _then;

/// Create a copy of ServerResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_ServerResponseDto(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

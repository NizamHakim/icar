// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_proximity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketProximityDto {

 int get ticketId; int get distance;
/// Create a copy of TicketProximityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketProximityDtoCopyWith<TicketProximityDto> get copyWith => _$TicketProximityDtoCopyWithImpl<TicketProximityDto>(this as TicketProximityDto, _$identity);

  /// Serializes this TicketProximityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketProximityDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,distance);

@override
String toString() {
  return 'TicketProximityDto(ticketId: $ticketId, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $TicketProximityDtoCopyWith<$Res>  {
  factory $TicketProximityDtoCopyWith(TicketProximityDto value, $Res Function(TicketProximityDto) _then) = _$TicketProximityDtoCopyWithImpl;
@useResult
$Res call({
 int ticketId, int distance
});




}
/// @nodoc
class _$TicketProximityDtoCopyWithImpl<$Res>
    implements $TicketProximityDtoCopyWith<$Res> {
  _$TicketProximityDtoCopyWithImpl(this._self, this._then);

  final TicketProximityDto _self;
  final $Res Function(TicketProximityDto) _then;

/// Create a copy of TicketProximityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? distance = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TicketProximityDto extends TicketProximityDto {
  const _TicketProximityDto({required this.ticketId, required this.distance}): super._();
  factory _TicketProximityDto.fromJson(Map<String, dynamic> json) => _$TicketProximityDtoFromJson(json);

@override final  int ticketId;
@override final  int distance;

/// Create a copy of TicketProximityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketProximityDtoCopyWith<_TicketProximityDto> get copyWith => __$TicketProximityDtoCopyWithImpl<_TicketProximityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketProximityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketProximityDto&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,distance);

@override
String toString() {
  return 'TicketProximityDto(ticketId: $ticketId, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$TicketProximityDtoCopyWith<$Res> implements $TicketProximityDtoCopyWith<$Res> {
  factory _$TicketProximityDtoCopyWith(_TicketProximityDto value, $Res Function(_TicketProximityDto) _then) = __$TicketProximityDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketId, int distance
});




}
/// @nodoc
class __$TicketProximityDtoCopyWithImpl<$Res>
    implements _$TicketProximityDtoCopyWith<$Res> {
  __$TicketProximityDtoCopyWithImpl(this._self, this._then);

  final _TicketProximityDto _self;
  final $Res Function(_TicketProximityDto) _then;

/// Create a copy of TicketProximityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? distance = null,}) {
  return _then(_TicketProximityDto(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icar_websocket_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
IcarWebsocketResponseDto _$IcarWebsocketResponseDtoFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'position':
          return IcarPositionWebsocketResponse.fromJson(
            json
          );
                case 'disconnect':
          return IcarDisconnectedWebsocketResponse.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'IcarWebsocketResponseDto',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$IcarWebsocketResponseDto {

 String get type; IcarPositionDto get icarPosition;
/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IcarWebsocketResponseDtoCopyWith<IcarWebsocketResponseDto> get copyWith => _$IcarWebsocketResponseDtoCopyWithImpl<IcarWebsocketResponseDto>(this as IcarWebsocketResponseDto, _$identity);

  /// Serializes this IcarWebsocketResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IcarWebsocketResponseDto&&(identical(other.type, type) || other.type == type)&&(identical(other.icarPosition, icarPosition) || other.icarPosition == icarPosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,icarPosition);

@override
String toString() {
  return 'IcarWebsocketResponseDto(type: $type, icarPosition: $icarPosition)';
}


}

/// @nodoc
abstract mixin class $IcarWebsocketResponseDtoCopyWith<$Res>  {
  factory $IcarWebsocketResponseDtoCopyWith(IcarWebsocketResponseDto value, $Res Function(IcarWebsocketResponseDto) _then) = _$IcarWebsocketResponseDtoCopyWithImpl;
@useResult
$Res call({
 String type, IcarPositionDto icarPosition
});


$IcarPositionDtoCopyWith<$Res> get icarPosition;

}
/// @nodoc
class _$IcarWebsocketResponseDtoCopyWithImpl<$Res>
    implements $IcarWebsocketResponseDtoCopyWith<$Res> {
  _$IcarWebsocketResponseDtoCopyWithImpl(this._self, this._then);

  final IcarWebsocketResponseDto _self;
  final $Res Function(IcarWebsocketResponseDto) _then;

/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? icarPosition = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,icarPosition: null == icarPosition ? _self.icarPosition : icarPosition // ignore: cast_nullable_to_non_nullable
as IcarPositionDto,
  ));
}
/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarPositionDtoCopyWith<$Res> get icarPosition {
  
  return $IcarPositionDtoCopyWith<$Res>(_self.icarPosition, (value) {
    return _then(_self.copyWith(icarPosition: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class IcarPositionWebsocketResponse implements IcarWebsocketResponseDto {
  const IcarPositionWebsocketResponse({required this.type, required this.icarPosition, required final  List<TicketProximityDto> ticketsProximity}): _ticketsProximity = ticketsProximity;
  factory IcarPositionWebsocketResponse.fromJson(Map<String, dynamic> json) => _$IcarPositionWebsocketResponseFromJson(json);

@override final  String type;
@override final  IcarPositionDto icarPosition;
 final  List<TicketProximityDto> _ticketsProximity;
 List<TicketProximityDto> get ticketsProximity {
  if (_ticketsProximity is EqualUnmodifiableListView) return _ticketsProximity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ticketsProximity);
}


/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IcarPositionWebsocketResponseCopyWith<IcarPositionWebsocketResponse> get copyWith => _$IcarPositionWebsocketResponseCopyWithImpl<IcarPositionWebsocketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IcarPositionWebsocketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IcarPositionWebsocketResponse&&(identical(other.type, type) || other.type == type)&&(identical(other.icarPosition, icarPosition) || other.icarPosition == icarPosition)&&const DeepCollectionEquality().equals(other._ticketsProximity, _ticketsProximity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,icarPosition,const DeepCollectionEquality().hash(_ticketsProximity));

@override
String toString() {
  return 'IcarWebsocketResponseDto.position(type: $type, icarPosition: $icarPosition, ticketsProximity: $ticketsProximity)';
}


}

/// @nodoc
abstract mixin class $IcarPositionWebsocketResponseCopyWith<$Res> implements $IcarWebsocketResponseDtoCopyWith<$Res> {
  factory $IcarPositionWebsocketResponseCopyWith(IcarPositionWebsocketResponse value, $Res Function(IcarPositionWebsocketResponse) _then) = _$IcarPositionWebsocketResponseCopyWithImpl;
@override @useResult
$Res call({
 String type, IcarPositionDto icarPosition, List<TicketProximityDto> ticketsProximity
});


@override $IcarPositionDtoCopyWith<$Res> get icarPosition;

}
/// @nodoc
class _$IcarPositionWebsocketResponseCopyWithImpl<$Res>
    implements $IcarPositionWebsocketResponseCopyWith<$Res> {
  _$IcarPositionWebsocketResponseCopyWithImpl(this._self, this._then);

  final IcarPositionWebsocketResponse _self;
  final $Res Function(IcarPositionWebsocketResponse) _then;

/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? icarPosition = null,Object? ticketsProximity = null,}) {
  return _then(IcarPositionWebsocketResponse(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,icarPosition: null == icarPosition ? _self.icarPosition : icarPosition // ignore: cast_nullable_to_non_nullable
as IcarPositionDto,ticketsProximity: null == ticketsProximity ? _self._ticketsProximity : ticketsProximity // ignore: cast_nullable_to_non_nullable
as List<TicketProximityDto>,
  ));
}

/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarPositionDtoCopyWith<$Res> get icarPosition {
  
  return $IcarPositionDtoCopyWith<$Res>(_self.icarPosition, (value) {
    return _then(_self.copyWith(icarPosition: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class IcarDisconnectedWebsocketResponse implements IcarWebsocketResponseDto {
  const IcarDisconnectedWebsocketResponse({required this.type, required this.icarPosition, required this.canceledTickets});
  factory IcarDisconnectedWebsocketResponse.fromJson(Map<String, dynamic> json) => _$IcarDisconnectedWebsocketResponseFromJson(json);

@override final  String type;
@override final  IcarPositionDto icarPosition;
 final  int canceledTickets;

/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IcarDisconnectedWebsocketResponseCopyWith<IcarDisconnectedWebsocketResponse> get copyWith => _$IcarDisconnectedWebsocketResponseCopyWithImpl<IcarDisconnectedWebsocketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IcarDisconnectedWebsocketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IcarDisconnectedWebsocketResponse&&(identical(other.type, type) || other.type == type)&&(identical(other.icarPosition, icarPosition) || other.icarPosition == icarPosition)&&(identical(other.canceledTickets, canceledTickets) || other.canceledTickets == canceledTickets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,icarPosition,canceledTickets);

@override
String toString() {
  return 'IcarWebsocketResponseDto.disconnect(type: $type, icarPosition: $icarPosition, canceledTickets: $canceledTickets)';
}


}

/// @nodoc
abstract mixin class $IcarDisconnectedWebsocketResponseCopyWith<$Res> implements $IcarWebsocketResponseDtoCopyWith<$Res> {
  factory $IcarDisconnectedWebsocketResponseCopyWith(IcarDisconnectedWebsocketResponse value, $Res Function(IcarDisconnectedWebsocketResponse) _then) = _$IcarDisconnectedWebsocketResponseCopyWithImpl;
@override @useResult
$Res call({
 String type, IcarPositionDto icarPosition, int canceledTickets
});


@override $IcarPositionDtoCopyWith<$Res> get icarPosition;

}
/// @nodoc
class _$IcarDisconnectedWebsocketResponseCopyWithImpl<$Res>
    implements $IcarDisconnectedWebsocketResponseCopyWith<$Res> {
  _$IcarDisconnectedWebsocketResponseCopyWithImpl(this._self, this._then);

  final IcarDisconnectedWebsocketResponse _self;
  final $Res Function(IcarDisconnectedWebsocketResponse) _then;

/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? icarPosition = null,Object? canceledTickets = null,}) {
  return _then(IcarDisconnectedWebsocketResponse(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,icarPosition: null == icarPosition ? _self.icarPosition : icarPosition // ignore: cast_nullable_to_non_nullable
as IcarPositionDto,canceledTickets: null == canceledTickets ? _self.canceledTickets : canceledTickets // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of IcarWebsocketResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IcarPositionDtoCopyWith<$Res> get icarPosition {
  
  return $IcarPositionDtoCopyWith<$Res>(_self.icarPosition, (value) {
    return _then(_self.copyWith(icarPosition: value));
  });
}
}

// dart format on

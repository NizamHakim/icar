// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  token: json['token'] as String,
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  tickets:
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => TicketDto.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'token': instance.token,
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'tickets': instance.tickets,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServerResponseDto _$ServerResponseDtoFromJson(Map<String, dynamic> json) =>
    _ServerResponseDto(
      statusCode: statusCodeConverter(json['statusCode'] as String),
      data: json['data'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ServerResponseDtoToJson(_ServerResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
    };

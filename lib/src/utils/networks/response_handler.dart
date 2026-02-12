import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:icar/src/shared/data/dto/server_response_dto.dart';

T responseHandler<T>(
  http.Response response, {
  required T Function(ServerResponseDto serverResponse) onSuccess,
  required T Function(dynamic json) onError,
}) {
  final jsonDecoded = jsonDecode(response.body) as Map<String, dynamic>;

  if (jsonDecoded['success']) {
    return onSuccess.call(ServerResponseDto.fromJson(jsonDecoded));
  } else {
    return onError.call(jsonDecoded);
  }
}

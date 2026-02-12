import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:icar/src/core/errors/exception.dart';
import 'package:icar/src/shared/data/dto/icar_dto.dart';
import 'package:icar/src/utils/networks/headers_builder.dart';
import 'package:icar/src/utils/networks/response_handler.dart';
import 'package:icar/src/utils/networks/uri_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'icar_remote_datasource.g.dart';

@riverpod
IcarRemoteDatasource icarRemoteDatasource(Ref ref) {
  return IcarRemoteDatasource();
}

class IcarRemoteDatasource {
  Future<List<IcarDto>> getIcars(String token, {int? icarStopId}) async {
    final response = await http.get(
      uriBuilder(
        endpoint: "/api/icars/",
        queryParameters: {"icarStopId": icarStopId},
      ),
      headers: headersBuilder(token: token),
    );
    return responseHandler<List<IcarDto>>(
      response,
      onSuccess: (serverResponse) {
        return (serverResponse.data as List)
            .map((icar) => IcarDto.fromJson(icar))
            .toList();
      },
      onError: (json) => throw ServerException.fromJson(json),
    );
  }
}

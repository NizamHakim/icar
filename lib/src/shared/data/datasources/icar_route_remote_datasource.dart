import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:icar/src/core/errors/exception.dart';
import 'package:icar/src/shared/data/dto/icar_route_dto.dart';
import 'package:icar/src/utils/networks/headers_builder.dart';
import 'package:icar/src/utils/networks/response_handler.dart';
import 'package:icar/src/utils/networks/uri_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'icar_route_remote_datasource.g.dart';

@riverpod
IcarRouteRemoteDatasource icarRouteRemoteDatasource(Ref ref) {
  return IcarRouteRemoteDatasource();
}

class IcarRouteRemoteDatasource {
  Future<List<IcarRouteDto>> getRoutes(String token, {bool? polyline}) async {
    final response = await http.get(
      uriBuilder(
        endpoint: "/api/icar-routes",
        queryParameters: {"polyline": polyline},
      ),
      headers: headersBuilder(token: token),
    );

    return responseHandler<List<IcarRouteDto>>(
      response,
      onSuccess: (serverResponse) {
        return (serverResponse.data as List)
            .map((icarRoute) => IcarRouteDto.fromJson(icarRoute))
            .toList();
      },
      onError: (json) => throw ServerException.fromJson(json),
    );
  }

  Future<IcarRouteDto> getRouteById(
    String token, {
    required int icarRouteId,
  }) async {
    final response = await http.get(
      uriBuilder(endpoint: "/api/icar-routes/$icarRouteId"),
      headers: headersBuilder(token: token),
    );

    return responseHandler<IcarRouteDto>(
      response,
      onSuccess: (serverResponse) => IcarRouteDto.fromJson(serverResponse.data),
      onError: (json) => throw ServerException.fromJson(json),
    );
  }
}

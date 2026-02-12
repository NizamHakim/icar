import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:icar/src/core/errors/exception.dart';
import 'package:icar/src/features/ticket/data/dto/review_dto.dart';
import 'package:icar/src/features/ticket/data/dto/ticket_dto.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';
import 'package:icar/src/utils/networks/body_builder.dart';
import 'package:icar/src/utils/networks/headers_builder.dart';
import 'package:icar/src/utils/networks/response_handler.dart';
import 'package:icar/src/utils/networks/uri_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_remote_datasource.g.dart';

@riverpod
TicketRemoteDatasource ticketRemoteDatasource(Ref ref) {
  return TicketRemoteDatasource();
}

class TicketRemoteDatasource {
  Future<List<TicketDto>> getTickets(
    String token, {
    TicketStatus? status,
  }) async {
    final response = await http.get(
      uriBuilder(
        endpoint: "/api/tickets",
        queryParameters: {"status": status?.name},
      ),
      headers: headersBuilder(token: token),
    );

    return responseHandler<List<TicketDto>>(
      response,
      onSuccess: (serverResponse) {
        final ticketList =
            (serverResponse.data as List)
                .map((ticket) => TicketDto.fromJson(ticket))
                .toList();
        return ticketList;
      },
      onError: (json) => throw ServerException.fromJson(json),
    );
  }

  Future<TicketDto> getTicketById(String token, {required int ticketId}) async {
    final response = await http.get(
      uriBuilder(endpoint: "/api/tickets/$ticketId"),
      headers: headersBuilder(token: token),
    );

    return responseHandler<TicketDto>(
      response,
      onSuccess: (serverResponse) => TicketDto.fromJson(serverResponse.data),
      onError: (json) => throw ServerException.fromJson(json),
    );
  }

  Future<TicketDto> createTicket(
    String token, {
    required int scheduleId,
  }) async {
    final response = await http.post(
      uriBuilder(endpoint: "/api/tickets/create"),
      headers: headersBuilder(token: token),
      body: bodyBuilder({"scheduleId": scheduleId}),
    );

    return responseHandler<TicketDto>(
      response,
      onSuccess: (serverResponse) => TicketDto.fromJson(serverResponse.data),
      onError: (json) => throw ServerException.fromJson(json),
    );
  }

  Future<TicketDto> updateTicket(
    String token,
    int ticketId, {
    ReviewDto? newReview,
    TicketStatus? newStatus,
  }) async {
    final response = await http.patch(
      uriBuilder(endpoint: "/api/tickets/$ticketId"),
      headers: headersBuilder(token: token),
      body: bodyBuilder({
        "review": newReview?.toJson(),
        "status": newStatus?.name,
      }),
    );

    return responseHandler<TicketDto>(
      response,
      onSuccess: (serverResponse) => TicketDto.fromJson(serverResponse.data),
      onError: (json) => throw ServerException.fromJson(json),
    );
  }
}

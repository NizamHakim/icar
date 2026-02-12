import 'package:go_router/go_router.dart';
import 'package:icar/src/core/key/navigator_key.dart';
import 'package:icar/src/features/notification/domain/entities/notification_payload.dart';

void handleNotification(NotificationPayload payload) {
  switch (payload) {
    case TicketDetailsNotification():
      navigatorKey.currentContext?.go("/home/${payload.ticketId}");
      break;
    case TicketReviewNotification():
      navigatorKey.currentContext?.go("/home/${payload.ticketId}/review");
      break;
  }
}

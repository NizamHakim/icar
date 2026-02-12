import 'package:flutter/material.dart';
import 'package:icar/src/features/auth/domain/entities/user.dart';
import 'package:icar/src/features/schedule/domain/entities/schedule.dart';
import 'package:icar/src/features/schedule/domain/entities/schedule_session.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket.dart';
import 'package:icar/src/features/ticket/domain/entities/ticket_status.dart';
import 'package:icar/src/shared/domain/entities/icar.dart';
import 'package:icar/src/shared/domain/entities/icar_route.dart';
import 'package:icar/src/shared/domain/entities/icar_status.dart';
import 'package:icar/src/shared/domain/entities/icar_stop.dart';
import 'package:icar/src/shared/domain/entities/route_stop_waypoint.dart';
import 'package:latlong2/latlong.dart';

// fake data for repository mock and skeletonizer
final fakeUser = const User(
  token: "randomhashedstring",
  id: 0,
  name: "User",
  email: "user@gmail.com",
);

final fakeIcar = const Icar(
  id: 0,
  name: "iCar",
  capacity: 0,
  status: IcarStatus.ACTIVE,
  icarRouteId: 0,
);

final fakeIcarRoute = const IcarRoute(
  id: 0,
  name: "iCar Route",
  color: Colors.black,
);

final fakeIcarStop = const IcarStop(
  id: 0,
  name: "iCar Stop",
  coordinate: LatLng(0, 0),
  distance: 0,
  duration: Duration(seconds: 0),
);

final fakeSchedule1 = Schedule(
  id: 0,
  session: ScheduleSession.SESSION_1,
  arrivalTime: DateTime.now(),
  icarId: 0,
  icarStopId: 0,
  ticketCount: 0,
);

final fakeSchedule2 = Schedule(
  id: 0,
  session: ScheduleSession.SESSION_2,
  arrivalTime: DateTime.now(),
  icarId: 0,
  icarStopId: 0,
  ticketCount: 0,
);

final fakeTicket = Ticket(
  id: 0,
  arrivedAt: DateTime.now(),
  expiredAt: DateTime.now(),
  status: TicketStatus.FINISHED,
  userId: 0,
  scheduleId: 0,
);

final fakeRouteStopWaypoint = const RouteStopWaypoint(
  id: 0,
  icarRouteId: 0,
  icarStopId: 0,
  order: 0,
);

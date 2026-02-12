// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'home_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class HomeLocalizationsEn extends HomeLocalizations {
  HomeLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get checkQueueLabelStop => 'Stop';

  @override
  String get checkQueueLabelRoute => 'Route';

  @override
  String get checkQueueHintStop => 'Select a stop';

  @override
  String get checkQueueHintRoute => 'Select a route';

  @override
  String get checkQueueSubmitButton => 'Check iCar queue';

  @override
  String get selectStopLabelLatestSearch => 'Latest search';

  @override
  String get selectStopLabelAllOptions => 'Stops';

  @override
  String get selectStopFindStopHint => 'Find a stop...';

  @override
  String get selectStopNoStopMatched => 'No suitable stops matched';

  @override
  String get noUpcomingTicket => 'No upcoming ticket in queue';

  @override
  String get viewAll => 'View all';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'home_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class HomeLocalizationsId extends HomeLocalizations {
  HomeLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get checkQueueLabelStop => 'Halte';

  @override
  String get checkQueueLabelRoute => 'Rute';

  @override
  String get checkQueueHintStop => 'Pilih halte';

  @override
  String get checkQueueHintRoute => 'Pilih rute';

  @override
  String get checkQueueSubmitButton => 'Cek antrean iCar';

  @override
  String get selectStopLabelLatestSearch => 'Pencarian terbaru';

  @override
  String get selectStopLabelAllOptions => 'Halte';

  @override
  String get selectStopFindStopHint => 'Cari halte...';

  @override
  String get selectStopNoStopMatched => 'Tidak ada halte yang cocok';

  @override
  String get noUpcomingTicket => 'Tidak ada tiket antrian yang akan datang';

  @override
  String get viewAll => 'Lihat semua';
}

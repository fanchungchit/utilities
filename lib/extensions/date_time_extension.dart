import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toDateTimeString([dynamic locale = 'en_US']) =>
      DateFormat.yMMMMd(locale).add_jm().format(this);

  String toTimeString([dynamic locale = 'en_US']) =>
      DateFormat.jm(locale).format(this);

  String toDateString([dynamic locale = 'en_US']) =>
      DateFormat.yMMMMd(locale).format(this);

  DateTime start() => DateTime(year, month, day);

  DateTime end() => DateTime(year, month, day, 23, 59, 59);

  DateTime date() => DateTime(year, month, day);

  DateTime time() => DateTime(0, 0, 0, hour, minute, second);

  bool isWithin([DateTime? date]) {
    final result = date ?? DateTime.now();
    return isAfter(result.start()) && isBefore(result.end());
  }
}

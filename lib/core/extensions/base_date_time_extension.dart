import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

extension DateTimeEx on DateTime? {
  String showFormattedDate({
    bool withTime = false,
    bool onlyTime = false,
    bool dateWithDayName = false,
  }) {
    if (onlyTime) {
      return intl.DateFormat('hh:mm a', 'en').format(this!);
    }
    if (withTime) {
      return intl.DateFormat('hh:mm a  dd, MM, yyyy', 'en').format(this!);
    }

    if (dateWithDayName) {
      return intl.DateFormat('EE, dd, MM, yyyy', 'en').format(this!);
    }
    return intl.DateFormat('yyyy-MM-dd', 'en').format(this!);
  }

  bool get checkDateTimeIsPassed {
    if (this == null) return false;
    if (this!.isBefore(DateTime.now())) {
      return true;
    }
    return false;
  }

  String get getDayName {
    return intl.DateFormat.EEEE(Get.locale!.languageCode).format(this!);
  }

  DateTime get getDateWithOutTime =>
      DateTime.parse(intl.DateFormat('yyyy-MM-dd').format(this!));

  DateTime get getTimeWtithStaticDate =>
      DateTime.parse(intl.DateFormat('yyyy-MM-ddTHH:mm:ss').format(this!));
  // String get timeAgo => timeago.format(this!, locale: 'ar');

  String get formateDateSystem =>
      intl.DateFormat('yyyy-MM-ddTHH:mm:ss').format(this!);
  String get formateTimeSystem => intl.DateFormat('HH:mm:ss').format(this!);

  DateTime get roundDateTimeToNearestSecond {
    DateTime dateTime = this!;
    int seconds = dateTime.second;
    int roundedSeconds =
        (seconds / 1).round() * 1; // Round seconds to the nearest second

    return DateTime(dateTime.year, dateTime.month, dateTime.day, dateTime.hour,
        dateTime.minute, roundedSeconds);
  }

  DateTime get toStartTimeWithDate {
    return DateTime.parse(intl.DateFormat('yyyy-MM-ddT00:00:00').format(this!));
  }

  DateTime get toEndTimeWithDate {
    return DateTime.parse(intl.DateFormat('yyyy-MM-ddT23:59:59').format(this!));
  }
}

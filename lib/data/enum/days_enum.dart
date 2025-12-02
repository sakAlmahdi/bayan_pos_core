/*
Sunday = 0,
Monday = 1,
Tuesday = 2,
Wednesday = 3,
Thursday = 4,
Friday = 5,
Saturday = 6

*/

enum Day { sunday, monday, tuesday, wednesday, thursday, friday, saturday }

Day convertStringToDay(int key) {
  switch (key) {
    case 6:
      return Day.saturday;
    case 0:
      return Day.sunday;
    case 1:
      return Day.monday;
    case 2:
      return Day.tuesday;
    case 3:
      return Day.wednesday;
    case 4:
      return Day.thursday;
    case 5:
      return Day.friday;
    default:
      return Day.saturday;
  }
}

Day dayNow({int? day}) {
  DateTime now = DateTime.now();
  switch (day ?? now.weekday) {
    case 1:
      return Day.monday;
    case 2:
      return Day.tuesday;
    case 3:
      return Day.wednesday;
    case 4:
      return Day.thursday;
    case 5:
      return Day.friday;
    case 6:
      return Day.saturday;
    case 7:
      return Day.sunday;
    default:
      return Day.saturday;
  }
}

extension DayExtension on Day {
  String toName() {
    switch (this) {
      case Day.sunday:
        return "الأحد";
      case Day.monday:
        return "الاثنين";
      case Day.tuesday:
        return "الثلاثاء";
      case Day.wednesday:
        return "الأربعاء";
      case Day.thursday:
        return "الخميس";
      case Day.friday:
        return "الجمعة";
      case Day.saturday:
        return "السبت";
    }
  }
}

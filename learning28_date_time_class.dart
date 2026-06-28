void main() {
  /// Current date & time (local)
  DateTime now = DateTime.now();
  print(now); // e.g. 2025-11-08 20:45:10.123

  /// Current time in UTC
  DateTime utcNow = DateTime.now().toUtc();
  print(utcNow); // e.g. 2025-11-08 14:45:10.123Z

  /// Custom date and time
  DateTime birthday = DateTime(2002, 4, 15, 8, 30); // year, month, day, hour, minute
  print(birthday); // 2002-04-15 08:30:00.000

  /// From milliseconds since epoch (Jan 1 1970 UTC)
  DateTime fromEpoch = DateTime.fromMillisecondsSinceEpoch(1636225200000);
  print(fromEpoch); // 2021-11-07 06:00:00.000

  /// Convert to local
  utcNow = utcNow.toLocal();
  print(utcNow);

  /// Adding or Subtracting time
  DateTime next = now.add(Duration(days: 5));
  DateTime last = now.subtract(Duration(hours: 2));
  print('Now: $now');
  print('Next Week: $next');
  print('Last Week: $last');

  /// Comparing dates
  DateTime a = DateTime(2023, 1, 1);
  DateTime b = DateTime(2025, 11, 8);
  print(a.isBefore(b)); // true
  print(a.isAfter(b)); // false
  print(a.isAtSameMomentAs(b)); // false

  /// Difference between dates

  DateTime start = DateTime(2025, 11, 1);
  DateTime end = DateTime(2025, 11, 8);
  Duration diff = end.difference(start);
  print(diff.inDays);
  print(diff.inHours);
  print(diff.inMinutes);

  /// Converting DateTime to String and then converting back
  String str = '2025-11-08 20:45:00';
  DateTime parsed = DateTime.parse(str);
  print(parsed);
  print(parsed.toIso8601String());


}

import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  bool isToday() {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  String formatDate() {
    final day = this.day.toString().padLeft(2, '0');
    final month = this.month.toString().padLeft(2, '0');
    final year = this.year.toString();

    /// homework filters date format "2023-07-01"
    return '$year-$month-$day';
  }
}

String formatTimeString(String timeString) {
  // Parsing the time string to a DateTime object
  DateTime dateTime = DateFormat("HH:mm:ss").parse(timeString);

  // Formatting the DateTime object to the desired format
  String formattedTime = DateFormat("HH:mm").format(dateTime);

  return formattedTime;
}

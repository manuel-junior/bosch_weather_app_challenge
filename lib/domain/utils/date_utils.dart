import 'package:intl/intl.dart';

String formatTime(DateTime time) {
  return DateFormat("HH:mm").format(time);
}

String formatDate(DateTime date) {
  return DateFormat(" yyyy/MM/dd").format(date);
}

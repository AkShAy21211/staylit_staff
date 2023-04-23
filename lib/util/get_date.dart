import 'package:intl/intl.dart';

String getDate(DateTime dateTime, {bool onlyTime = false}) {
  String date = onlyTime
      ? DateFormat('hh : mm a').format(dateTime.toLocal())
      : DateFormat('dd/MM/yyyy').format(dateTime.toLocal());

  return date;
}

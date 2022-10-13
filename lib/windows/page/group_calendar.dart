import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class GroupCalendar extends StatelessWidget {
  const GroupCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 10, 16)));
  }
}

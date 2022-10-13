import 'package:book/provider/calendar_pb.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatelessWidget {
  const MyCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider(
      create: (context) => PBCalendar(),
      child: TableCalendar(
          calendarFormat: context.watch<PBCalendar>().before,
          onFormatChanged: (format) {
            context.read<PBCalendar>().changeCalendarFormat(after: format);
          },
          locale: 'ko-KR',
          headerStyle: const HeaderStyle(),
          onDaySelected: (DateTime selected, DateTime focused) {
            context.read<PBCalendar>().onDaySelected(
                  selected: selected,
                  focused: focused,
                );
          },
          focusedDay: context.watch<PBCalendar>().selectedDay,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 10, 16)),
    ));
  }
}

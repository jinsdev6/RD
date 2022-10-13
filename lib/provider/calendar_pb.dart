import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';

class PBCalendar with ChangeNotifier {
  DateTime _selectedDay = DateTime.now();
  DateTime get selectedDay => _selectedDay;

  CalendarFormat _before = CalendarFormat.week;
  CalendarFormat get before => _before;

  void onDaySelected(
      {required final DateTime selected, required final DateTime focused}) {
    _selectedDay = selected;
    _selectedDay = focused;
    notifyListeners();
  }

  void changeCalendarFormat({required CalendarFormat after}) {
    _before = after;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';

class PBAniList with ChangeNotifier {
  int _nListCnt = 0;
  int get nListCnt => _nListCnt;

  final items = List<String>.generate(10, (index) => '$index');

  void addList() {
    // _nListCnt++;
    items.add(items.length.toString());
    notifyListeners();
  }

  void removeList(final int index) {
    items.removeAt(index);
  }
}

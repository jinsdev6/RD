import 'package:flutter/cupertino.dart';

class PBNavigator with ChangeNotifier {
  int _pageIdx = 0;
  int get pageIdx => _pageIdx;

  void changeIdx({required final int seleted}) {
    _pageIdx = seleted;
    notifyListeners();
  }
}

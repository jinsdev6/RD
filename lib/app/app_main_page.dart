import 'package:book/common/txt.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => SafeArea(
          child: ScaffoldPage(
        bottomBar: BottomNavigation(
          index: 1,
          items: [
            BottomNavigationItem(
                icon: const Icon(Icons.abc), title: Txt('data')),
            BottomNavigationItem(
                icon: const Icon(Icons.abc), title: Txt('data')),
            BottomNavigationItem(
                icon: const Icon(Icons.abc), title: Txt('data')),
            BottomNavigationItem(
                icon: const Icon(Icons.abc), title: Txt('data')),
          ],
        ),
      )),
    );
  }
}

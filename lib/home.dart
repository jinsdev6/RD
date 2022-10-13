import 'package:book/app/app_main_page.dart';
import 'package:book/main.dart';
import 'package:book/windows/windows_main_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDesktop ? WindowsMain() : const AppMain();
  }
}

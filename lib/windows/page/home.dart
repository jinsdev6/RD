import 'package:book/const/colors.dart';
import 'package:book/common/txt.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class WindowsHome extends StatelessWidget {
  const WindowsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(children: [
      // Container(
      //   height: 100,
      //   child: Row(
      //       children: List.generate(
      //           10, (index) => InputChip(label: Txt('test$index')))),
      // ),
      Container(
        height: 300,
        color: ZDOK.greyOp2,
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          Expanded(
            child: Container(
              height: 600,
              color: ZDOK.greyOp2,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 600,
              color: ZDOK.greyOp2,
            ),
          ),
        ],
      )
    ]);
  }
}

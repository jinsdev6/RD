import 'package:book/const/colors.dart';
import 'package:book/common/txt.dart';
import 'package:book/common/z_container.dart';
import 'package:flutter/material.dart';

class ProgressList extends StatelessWidget {
  const ProgressList({
    Key? key,
    required this.strBook,
    required this.dProgress,
  }) : super(key: key);
  final String strBook;
  final double dProgress;

  @override
  Widget build(BuildContext context) {
    return ZContainer(
      // borderRadius: 30,
      border: Borders.radius30,
      paddings: const EdgeInsets.all(30),
      backColor: ZDOK.greyOp1,
      height: 500,
      width: double.infinity,
      widget: Row(
        children: [
          Expanded(
              child: Container(
            height: double.infinity,
            color: ZDOK.white,
            child: Center(child: Txt('책 $strBook')),
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: CircularProgressIndicator(
                  value: dProgress,
                  strokeWidth: 25,
                  color: ZDOK.amber,
                  backgroundColor: ZDOK.greyOp2,
                ),
              ),
            ],
          )),
          Expanded(
              child: Container(
            child: Center(child: Txt('내 기록')),
          ))
        ],
      ),
    );
  }
}

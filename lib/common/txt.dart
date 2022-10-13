import 'package:book/const/colors.dart';
import 'package:flutter/material.dart';

class Txt extends Text {
  Txt(
    String data, {
    Key? key,
    this.txtColor = ZDOK.black,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w500,
    this.txtAlign = TextAlign.left,
  }) : super(
          data,
          key: key,
          style: TextStyle(
            color: txtColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          textAlign: txtAlign,
        );
  final Color? txtColor;
  final double? fontSize;
  final FontWeight fontWeight;
  final TextAlign? txtAlign;
}

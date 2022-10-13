// import 'package:book/common/txt.dart';
// import 'package:book/const/colors.dart';
// import 'package:flutter/material.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Btn extends Button {
  const Btn({
    Key? key,
    required Widget child,
    VoidCallback? onPressed,
  }) : super(
          key: key,
          child: child,
          onPressed: onPressed,
        );
}

import 'package:flutter/material.dart';

enum Borders {
  radius30,
  none,
  custom,
}

class ZContainer extends Container {
  ZContainer({
    Key? key,
    this.widget,
    this.backColor,
    this.borderRadius,
    this.height,
    this.width,
    this.paddings,
    this.border = Borders.none,
  }) : super(
          key: key,
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: border == Borders.none
                ? null
                : border == Borders.radius30
                    ? BorderRadius.circular(30)
                    : BorderRadius.circular(10),
            // borderRadius != null
            //     ? BorderRadius.circular(borderRadius)
            //     : null,
            color: backColor,
          ),
          child: widget,
          padding: paddings,
        );
  Widget? widget;
  Color? backColor;
  double? borderRadius;
  double? height;
  double? width;
  EdgeInsetsGeometry? paddings;
  Borders border;
}

class ZReactContainer extends InkWell {
  ZReactContainer({
    Key? key,
    this.hover,
    this.tap,
    this.widget,
    this.backColor,
    this.cRadius,
  }) : super(
            key: key,
            onHover: hover,
            onTap: tap,
            child: ZContainer(
              widget: widget,
              backColor: backColor,
              borderRadius: cRadius,
            ));
  void Function(bool)? hover;
  void Function()? tap;
  Widget? widget;
  Color? backColor;
  double? cRadius;
}

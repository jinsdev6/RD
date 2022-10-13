import 'package:book/common/z_container.dart';
import 'package:flutter/material.dart';

class TalkWidget extends StatelessWidget {
  const TalkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZContainer(
      height: 200,
      paddings: const EdgeInsets.all(30),
      border: Borders.radius30,
      widget: TextFormField(),
    );
  }
}

import 'package:fluent_ui/fluent_ui.dart';

class PastBook extends StatelessWidget {
  const PastBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(children: [
      Container(
        child: Text('Past Book'),
      )
    ]);
  }
}

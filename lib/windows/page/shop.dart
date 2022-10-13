import 'package:fluent_ui/fluent_ui.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(children: [
      Container(
        child: Text('Shop'),
      )
    ]);
  }
}

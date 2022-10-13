import 'package:book/common/txt.dart';
import 'package:fluent_ui/fluent_ui.dart';

class TodoPage extends StatelessWidget {
  TodoPage({Key? key}) : super(key: key);
  final items = List<String>.generate(10, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(children: [
      Container(
        height: double.maxFinite,
        // child: Text('Todo Page'),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(
              key: Key(item),
              onDismissed: (d) {},
              background: Container(
                color: Colors.red,
              ),
              child: ListTile(
                title: Txt(item),
              ),
            );
          },
        ),
        // child: AnimatedList(
        //   itemBuilder: (context, index, animation) => ListTile(),
        // ),
      )
    ]);
  }
}

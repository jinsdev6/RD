import 'package:book/common/z_talk.dart';
import 'package:fluent_ui/fluent_ui.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(children:
        //List.generate(2, (index) => TalkWidget())
        [
      Container(
        child: Text('Talk Page'),
        // child: TalkWidget(),
      )
    ]);
  }
}

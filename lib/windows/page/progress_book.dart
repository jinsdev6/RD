import 'package:book/common/progress_book_widget.dart';
import 'package:fluent_ui/fluent_ui.dart';

class ProgressBook extends StatelessWidget {
  const ProgressBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
        children: List.generate(
            3,
            (index) => Column(
                  children: [
                    ProgressList(
                      strBook: '$index',
                      dProgress: 0.3 * index + 0.1,
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                )));
  }
}

import 'package:book/common/btn.dart';
import 'package:book/common/txt.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  final double _width = 200;
  final double _height = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: _height,
            width: _width,
            child: TextBox(
              prefix: Txt('ID'),
              autofocus: true,
              autofillHints: const [AutofillHints.email],
            )),
        const SizedBox(height: 10),
        SizedBox(
            height: _height,
            width: _width,
            child: TextBox(
              prefix: Txt('PW'),
              autofillHints: const [AutofillHints.password],
              obscureText: true,
            )),
        const SizedBox(height: 10),
        SizedBox(
            width: _width,
            child: Btn(
              child: Txt(
                'Login',
                txtAlign: TextAlign.center,
              ),
              onPressed: () {},
            )),
      ],
    );
  }
}

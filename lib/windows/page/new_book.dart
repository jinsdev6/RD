import 'dart:convert';

import 'package:book/common/txt.dart';
import 'package:book/model/book_api.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:http/http.dart' as http;

class NewBook extends StatelessWidget {
  const NewBook({Key? key}) : super(key: key);

  Future<Book> fetchBook() async {
    final strUri = 'http://www.dlibrary.go.kr/openapi/call.do?';
    final strKey = 'dist_key=f6t+vQf8xojinRPBdRsMXQ==&func_id=3&sw=';
    final strFinder = '';
    final res = await http.get(Uri.parse(
        'http://www.dlibrary.go.kr/openapi/call.do?dist_key=f6t+vQf8xojinRPBdRsMXQ==&func_id=3&sw=%ED%86%A0%EC%A7%80'));
    if (res.statusCode == 200) {
      print(json.decode(res.body));
      return Book.fromJson(json.decode(res.body));
    } else {
      print(res.statusCode);
      // throw Exception();
      // return Book(title: title, author: author, publisher: publisher)
      return Book.init();
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Container(),
    // );
    return FutureBuilder(
        future: fetchBook(),
        builder: (context, snapshot) => snapshot.hasData ? Txt('성공') : Txt('에러')
        //ScaffoldPage.scrollable(children: []),
        // child: ScaffoldPage.scrollable(children: [
        //   Container(
        //     child: Text('New Book'),
        //   )
        // ]),
        );
  }
}

import 'package:book/common/page.dart';
import 'package:book/provider/navigator_pb.dart';
import 'package:book/windows/page/group_calendar.dart';
import 'package:book/windows/page/home.dart';
import 'package:book/windows/page/login_page.dart';
import 'package:book/windows/page/my_calendar.dart';
import 'package:book/windows/page/new_book.dart';
import 'package:book/windows/page/progress_book.dart';
import 'package:book/windows/page/past_book.dart';
import 'package:book/windows/page/shop.dart';
import 'package:book/windows/page/talk.dart';
import 'package:book/windows/page/todo.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import '../common/txt.dart';

class WindowsMain extends StatelessWidget {
  WindowsMain({Key? key}) : super(key: key);

  final viewKey = GlobalKey();
  final List<NavigationPaneItem> menuItems = [
    PaneItem(
      icon: const Icon(FluentIcons.emoji2),
      title: Txt(
        'Home',
      ),
    ),
    PaneItemSeparator(),
    PaneItemHeader(header: Txt('My')),
    PaneItem(
      icon: const Icon(FluentIcons.event_to_do_logo),
      title: Txt(
        'To Do',
      ),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.calendar),
      title: Txt('Calendar'),
    ),
    PaneItemSeparator(),
    PaneItemHeader(header: Txt('Group')),
    PaneItem(
      icon: const Icon(FluentIcons.add_notes),
      title: Txt('New Book'),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.edit_note),
      title: Txt('Progress Book'),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.diet_plan_notebook),
      title: Txt('Past Book'),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.calendar),
      title: Txt('Calendar'),
    ),
    PaneItemSeparator(),
    PaneItemHeader(header: Txt('Community')),
    PaneItem(
      icon: const Icon(FluentIcons.speech),
      title: Txt('Talk'),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.shop),
      title: Txt('Shop'),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.a_a_d_logo),
      title: Txt('Login'),
    ),
  ];

  final List<Widget> pages = [
    WindowsHome(),
    TodoPage(),
    MyCalendar(),
    NewBook(),
    ProgressBook(),
    PastBook(),
    GroupCalendar(),
    TalkPage(),
    ShopPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PBNavigator(),
      child: NavigationView(
        key: viewKey,
        pane: NavigationPane(
            displayMode: PaneDisplayMode.auto,
            onChanged: (i) {
              context.read<PBNavigator>().changeIdx(seleted: i);
            },
            selected: () {
              return context.watch<PBNavigator>().pageIdx;
            }(),
            items: menuItems),
        content: NavigationBody(
            index: context.watch<PBNavigator>().pageIdx, children: pages),
      ),
      builder: (context, _) {
        return FluentApp(
          routes: {
            rHome: (_) => const WindowsHome(),
            rTodo: (_) => TodoPage(),
            rMyCalendar: (_) => const MyCalendar(),
            rNewBook: (_) => const NewBook(),
            rProgressBook: (_) => const ProgressBook(),
            rPastBook: (_) => const PastBook(),
            rGroupCalendar: (_) => const GroupCalendar(),
            rTalk: (_) => const TalkPage(),
            rShop: (_) => const ShopPage(),
            rLoginPage: (_) => const LoginPage(),
          },
          initialRoute: rHome,
          debugShowCheckedModeBanner: false,
          key: GlobalKey(),
          builder: (context, child) => ChangeNotifierProvider(
            create: (context) => PBNavigator(),
            child: NavigationView(
              pane: NavigationPane(
                  displayMode: PaneDisplayMode.auto,
                  onChanged: (i) {
                    context.read<PBNavigator>().changeIdx(seleted: i);
                  },
                  selected: () {
                    return context.watch<PBNavigator>().pageIdx;
                  }(),
                  items: menuItems),
              content: NavigationBody(
                  index: context.watch<PBNavigator>().pageIdx, children: pages),
            ),
          ),
        );
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return FluentApp(
  //     routes: {
  //       rHome: (_) => const WindowsHome(),
  //       rTodo: (_) => TodoPage(),
  //       rMyCalendar: (_) => const MyCalendar(),
  //       rNewBook: (_) => const NewBook(),
  //       rProgressBook: (_) => const ProgressBook(),
  //       rPastBook: (_) => const PastBook(),
  //       rGroupCalendar: (_) => const GroupCalendar(),
  //       rTalk: (_) => const TalkPage(),
  //       rShop: (_) => const ShopPage(),
  //     },
  //     initialRoute: '/',
  //     debugShowCheckedModeBanner: false,
  //     key: GlobalKey(),
  //     builder: (context, child) => ChangeNotifierProvider(
  //       create: (context) => PBNavigator(),
  //       child: NavigationView(
  //         pane: NavigationPane(
  //             displayMode: PaneDisplayMode.auto,
  //             onChanged: (i) {
  //               context.read<PBNavigator>().changeIdx(seleted: i);
  //             },
  //             selected: () {
  //               return context.watch<PBNavigator>().pageIdx;
  //             }(),
  //             items: menuItems),
  //         content: NavigationBody(
  //             index: context.watch<PBNavigator>().pageIdx, children: pages),
  //       ),
  //     ),
  //   );
  // }
}

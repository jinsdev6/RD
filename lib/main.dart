import 'package:book/home.dart';
import 'package:book/provider/calendar_pb.dart';
import 'package:book/provider/navigator_pb.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (isDesktop) {
    await flutter_acrylic.Window.initialize();
    flutter_acrylic.WindowEffect.acrylic;
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(
        TitleBarStyle.normal,
        windowButtonVisibility: false,
      );
      //await windowManager.setSize(const Size(755, 545));
      // await windowManager.setMinimumSize(const Size(755, 545));
      // await windowManager.setMaximumSize(const Size(1920, 1080));
      await windowManager.show();
      //await windowManager.setPreventClose(true);
      //await windowManager.setSkipTaskbar(true);
    });
  }

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => PBNavigator()),
      ChangeNotifierProvider(create: (_) => PBCalendar())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Home();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const Home()},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grassroots_demo/modules/HomePage/views/HomePageView.dart';
import 'package:grassroots_demo/utils/colorUtil.dart';
import 'package:grassroots_demo/utils/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}

class MyApp extends StatelessWidget {
  final ColorUtil _colorUtil = ColorUtil();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grassroot Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: _colorUtil.kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: _colorUtil.kPrimaryTextColor,
                fontFamily: primaryFontFamily,
              ),
          iconTheme: IconThemeData(
            color: _colorUtil.kPrimaryTextColor,
          )),
      scrollBehavior: const ScrollBehaviorModified(),
      home: const HomePage(),
    );
  }
}

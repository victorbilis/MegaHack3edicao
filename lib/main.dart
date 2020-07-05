import 'dart:io';
import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/book_screen/book_screen.dart';
import 'package:best_flutter_ui_templates/book_screen/select_action.dart';
import 'package:best_flutter_ui_templates/design_course/login_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:best_flutter_ui_templates/design_course/home_design_course.dart';
import 'navigation_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
  //    DeviceOrientation.portraitUp,
  //    DeviceOrientation.portraitDown
  //  ]).then((_) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //    statusBarColor: Colors.transparent,
    //    statusBarIconBrightness: Brightness.dark,
    //    statusBarBrightness:
    //        Platform.isAndroid ? Brightness.dark : Brightness.light,
    //    systemNavigationBarColor: Colors.white,
    //    systemNavigationBarDividerColor: Colors.grey,
    //    systemNavigationBarIconBrightness: Brightness.dark,
    //  ));
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        // platform: TargetPlatform.iOS,
      ),
      // home: DesignCourseHomeScreen(),
      home: LoginAppScreen(),
      // home: BookScreen(),
      //home: SelectAtionScreen(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

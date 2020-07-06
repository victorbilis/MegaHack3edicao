import 'dart:io';
import 'package:raizes_do_saber/app_theme.dart';
import 'package:raizes_do_saber/book_screen/book_screen.dart';
import 'package:raizes_do_saber/book_screen/finished_screen.dart';
import 'package:raizes_do_saber/book_screen/select_action.dart';
import 'package:raizes_do_saber/design_course/login_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raizes_do_saber/design_course/home_design_course.dart';

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
        home: LoginAppScreen());
    // home: BookScreen(),
    //home: SelectAtionScreen(),
    // home: FinishedScreen());
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

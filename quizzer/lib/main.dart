import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "StartPage.dart";
import "Colors.dart";
import "Login.dart";
import "LoginVerification.dart";
import "Signup.dart";
import "StartGame.dart";

void main() {
  runApp(const MyApp());
}


ThemeData game_theme = ThemeData(
    scaffoldBackgroundColor: bkColor,
    primarySwatch: txtColor,
    fontFamily: "SF Pro Display",
);


class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
      return ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, child) {
              return MaterialApp(
                title: "Quizzer Game",
                theme: game_theme,
                home: const StartGame(),
              );
          });
    }
}

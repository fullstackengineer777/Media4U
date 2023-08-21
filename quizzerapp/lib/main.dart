import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/themes.dart';
import 'package:quizzerapp/screens/splash.dart';
import 'package:quizzerapp/screens/category1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (_, child) {
              return MaterialApp(
                title: "Quizzer Game",
                theme: mainTheme,
                home: const SplashScreen(),
                // home: const Category1Screen(),
              );
          });
  }    
}

import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/colors.dart';

final ThemeData mainTheme = ThemeData(
    // scaffoldBackgroundColor: bkColor,
    primarySwatch: txtColor,
    fontFamily: "Poppins",
    // fontFamily: "SF Pro Display",
);


final ThemeData purpleTheme = ThemeData(
  primaryColorDark: const Color.fromRGBO(81, 99, 224, 1),
  primaryColorLight: Color.fromRGBO(136, 147, 240, 1),
  dividerColor: Colors.white,
  useMaterial3: true,
);

final ThemeData greyTheme = ThemeData(
  primaryColor: Colors.grey,
  dividerColor: Colors.white,
  useMaterial3: true,
);

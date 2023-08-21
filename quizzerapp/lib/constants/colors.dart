import 'package:flutter/material.dart';

// Color hexToColor(String code) {
//   return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
// }

BoxDecoration bkDecoration = BoxDecoration(
    color: Color.fromRGBO(0, 0, 0, 1),
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.4, 0.8, 1],
        colors: [
            Color.fromRGBO(249, 229, 232, 0.3),
            Color.fromRGBO(98, 132, 255, 0.3),
            // Color.fromRGBO(98, 132, 255, 0.2),
            Color.fromRGBO(255, 114, 182, 0.2),
            Color.fromRGBO(151, 255, 212, 0.3),
        ]
    ),
    // gradient: LinearGradient(
    //     begin: Alignment.topCenter,
    //     end: Alignment.bottomCenter,
    //     stops: [0.1, 0.4, 0.8, 1],
    //     colors: [
    //         Color.fromRGBO(0, 0, 0, 0.3),
    //         Color.fromRGBO(0, 0, 0, 0.3),
    //         // Color.fromRGBO(98, 132, 255, 0.2),
    //         Color.fromRGBO(0, 0, 0, 0.2),
    //         Color.fromRGBO(151, 255, 212, 0.3),
    //     ]
    // )
);

MaterialColor bkColor = MaterialColor(0xFFE3EDF7, <int, Color>{
    50: Color(0xFFE3EDF7),
    100: Color(0xFFE3EDF7),
    200: Color(0xFFE3EDF7),
    300: Color(0xFFE3EDF7),
    400: Color(0xFFE3EDF7),
    500: Color(0xFFE3EDF7),
    600: Color(0xFFE3EDF7),
    700: Color(0xFFE3EDF7),
    800: Color(0xFFE3EDF7),
    900: Color(0xFFE3EDF7),
  },
);

MaterialColor txtBorderColor = MaterialColor(0xFFE3EDF7, <int, Color>{
    50: Color(0xFFE3EDF7),
    100: Color(0xFFE3EDF7),
    200: Color(0xFFE3EDF7),
    300: Color(0xFFE3EDF7),
    400: Color(0xFFE3EDF7),
    500: Color(0xFFE3EDF7),
    600: Color(0xFFE3EDF7),
    700: Color(0xFFE3EDF7),
    800: Color(0xFFE3EDF7),
    900: Color(0xFFE3EDF7),
  },
);
MaterialColor blueColor = MaterialColor(0xFF0083FF, <int, Color>{
    50: Color(0xFF0083FF),
    100: Color(0xFF0083FF),
    200: Color(0xFF0083FF),
    300: Color(0xFF0083FF),
    400: Color(0xFF0083FF),
    500: Color(0xFF0083FF),
    600: Color(0xFF0083FF),
    700: Color(0xFF0083FF),
    800: Color(0xFF0083FF),
    900: Color(0xFF0083FF),
  },
);


MaterialColor txtColor = MaterialColor(0xFF3B4F7D, <int, Color>{
    50: Color(0xFF3B4F7D),
    100: Color(0xFF3B4F7D),
    200: Color(0xFF3B4F7D),
    300: Color(0xFF3B4F7D),
    400: Color(0xFF3B4F7D),
    500: Color(0xFF3B4F7D),
    600: Color(0xFF3B4F7D),
    700: Color(0xFF3B4F7D),
    800: Color(0xFF3B4F7D),
    900: Color(0xFF3B4F7D),
  },
);

MaterialColor gdBKStart = MaterialColor(0xFFD6E3F3, <int, Color>{
    50: Color(0xFFD6E3F3),
    100: Color(0xFFD6E3F3),
    200: Color(0xFFD6E3F3),
    300: Color(0xFFD6E3F3),
    400: Color(0xFFD6E3F3),
    500: Color(0xFFD6E3F3),
    600: Color(0xFFD6E3F3),
    700: Color(0xFFD6E3F3),
    800: Color(0xFFD6E3F3),
    900: Color(0xFFD6E3F3),
  },
);

MaterialColor gradBtnStart = MaterialColor(0xFF5163E0, <int, Color>{
    50: Color(0xFF5163E0),
    100: Color(0xFF5163E0),
    200: Color(0xFF5163E0),
    300: Color(0xFF5163E0),
    400: Color(0xFF5163E0),
    500: Color(0xFF5163E0),
    600: Color(0xFF5163E0),
    700: Color(0xFF5163E0),
    800: Color(0xFF5163E0),
    900: Color(0xFF5163E0),
  },
);

MaterialColor gradBtnEnd = MaterialColor(0xFF8893F0, <int, Color>{
    50: Color(0xFF8893F0),
    100: Color(0xFF8893F0),
    200: Color(0xFF8893F0),
    300: Color(0xFF8893F0),
    400: Color(0xFF8893F0),
    500: Color(0xFF8893F0),
    600: Color(0xFF8893F0),
    700: Color(0xFF8893F0),
    800: Color(0xFF8893F0),
    900: Color(0xFF8893F0),
  },
);
MaterialColor txtBoxColor = MaterialColor(0xFFDCE4F8, <int, Color>{
    50: Color(0xFFDCE4F8),
    100: Color(0xFFDCE4F8),
    200: Color(0xFFDCE4F8),
    300: Color(0xFFDCE4F8),
    400: Color(0xFFDCE4F8),
    500: Color(0xFFDCE4F8),
    600: Color(0xFFDCE4F8),
    700: Color(0xFFDCE4F8),
    800: Color(0xFFDCE4F8),
    900: Color(0xFFDCE4F8),
  },
);
MaterialColor shadow1 = MaterialColor(0xFFBAC3DF, <int, Color>{
    50: Color(0xFFBAC3DF),
    100: Color(0xFFBAC3DF),
    200: Color(0xFFBAC3DF),
    300: Color(0xFFBAC3DF),
    400: Color(0xFFBAC3DF),
    500: Color(0xFFBAC3DF),
    600: Color(0xFFBAC3DF),
    700: Color(0xFFBAC3DF),
    800: Color(0xFFBAC3DF),
    900: Color(0xFFBAC3DF),
  },
);

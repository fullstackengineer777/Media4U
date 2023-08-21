import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/login_screen.dart';
import 'package:quizzerapp/screens/home.dart';
import 'package:quizzerapp/widgets/submit_button.dart';

class StartGame extends StatefulWidget{
    const StartGame({super.key});

    @override
    State<StartGame> createState() => _StartGameState();
}

class _StartGameState extends State<StartGame>{
    
    @override
    void initState(){
        super.initState();
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: bkDecoration,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        SizedBox(height: 100.h),
                        Image.asset('assets/images/logo.png' , height: 92.h),
                        SizedBox(height: 15.h),
                        Text(
                            MARK_TITLE,
                            style: Head1,
                        ),
                        SizedBox(height: 278.h),
                        Padding(
                            padding: EdgeInsets.all(18.w),
                            // padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                    SizedBox(height: 18.h),
                                    SubmitButton(
                                        title: NETWORK,
                                        onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                builder: (context) => HomeScreen(),
                                                ));
                                        },
                                    ),
                                    SizedBox(height: 18.h),
                                    SubmitButton(
                                        title: NO_NETWORK,
                                        onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                builder: (context) => HomeScreen(),
                                                ));
                                        },
                                    ),
                                    // Spacer(),
                                ]
                            )
                        )
                    ]
                )
            ),
        );
    }
}

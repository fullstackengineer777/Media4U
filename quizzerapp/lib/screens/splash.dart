import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/login_screen.dart';

class SplashScreen extends StatefulWidget{
    const SplashScreen({super.key});

    @override
    State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
    
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
                                    Text(WELCOME, style: Head1),
                                    Text(MARK_TITLE, style: P28),
                                    SizedBox(height: 18.h),
                                    GestureDetector(
                                        onTap: (){
                                            print("welcome");
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginScreen(),
                                                )
                                            );
                                        },
                                        child: Row(
                                            children:[
                                                    Text(WELCOME_START, style: P20),
                                                    SizedBox(width: 10.w),
                                                    Image.asset('assets/images/arrow_next.png',
                                                        height: 7.1.h,
                                                        fit: BoxFit.cover)
                                            ]
                                        ),
                                    )
                                ]
                            )
                        )
                    ]
                )
            ),
        );
    }
}

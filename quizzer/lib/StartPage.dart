import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "Colors.dart";
import 'package:flutter/foundation.dart';
import 'dart:developer';

class StartPage extends StatelessWidget{
    const StartPage({Key? key}): super(key: key);
    //var pixelRatio = MediaQuery.of(context).devicePixelRatio;
    //log("pixelRatio");

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    SizedBox(height: 100.h),
                    Image.asset(
                        'assets/images/logo.png',
                        height: 92.h,
                        fit: BoxFit.cover
                    ),
                    SizedBox(height: 15.h),
                    Text(
                        "Quizzer",
                        style: TextStyle(
                            fontSize: 32.sp,
                            fontWeight: FontWeight.bold,
                            color: txtColor,
                        ),
                    ),
                    SizedBox(height: 278.h),
                    Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    "Welcome To ,",
                                    style: TextStyle(
                                        fontSize: 32.sp,
                                        fontWeight: FontWeight.bold,
                                        color: txtColor,
                                    )
                                ),
                                Text(
                                    "Quizzer",
                                    style: TextStyle(
                                        fontSize: 28.sp,
                                        color: txtColor,
                                    )
                                ),
                                Row(
                                    children:[
                                        Text(
                                            "Let's Start",
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                color: txtColor,
                                            )
                                        ),
                                        SizedBox(width: 10.w),
                                        Image.asset('assets/images/arrow_next.png',
                                            height: 7.1.h,
                                            fit: BoxFit.cover)
                                    ]
                                ),
                            ]
                        )
                    ),

                   
                ]
            ),
        );
    }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/explaination_web.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/question_button.dart';
import 'package:quizzerapp/widgets/question_box.dart';
import 'package:quizzerapp/widgets/explain_text.dart';
import 'package:quizzerapp/widgets/play_button.dart';


class Winner extends StatefulWidget{
    const Winner({super.key});

    @override
    State<Winner> createState() => _WinnerState();
}

class _WinnerState extends State<Winner>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: bkDecoration,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                                CustomAppBar(title: WINNER),
                                SizedBox(height: 40.h),
                                SizedBox(height: 40.h),
                                Center(
                                    child: Container(
                                        width: 265.w,
                                        height: 400.h,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/winner_bk.png"), fit: BoxFit.fill),
                                        ),
                                        child: new Stack(
                                            children: <Widget>[ 
                                                new Positioned(
                                                    top: 110.h, left: 111.w,
                                                    child: Container(
                                                        width: 44.w, height: 44.h,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(25.sp),
                                                            border: Border.all(color: Color.fromRGBO(210, 151, 65, 1), width: 3.sp),
                                                            image: DecorationImage(image: AssetImage("assets/images/brain.png"), fit: BoxFit.fill),
                                                        )
                                                    )
                                                ),
                                                new Positioned(
                                                    top: 162.h, left: 110.w,
                                                    child: Text("Antony", style: P16),
                                                ),
                                                new Positioned(
                                                    top: 175.h, left: 95.w,
                                                    child: Container(
                                                        width: 82.w, height: 40.h,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(image: AssetImage("assets/images/star.png"), fit: BoxFit.fill),
                                                        )
                                                    )
                                                ),
                                                new Positioned(
                                                    top: 220.h, left: 75.w,
                                                    child: Container(
                                                        width: 120.w,height: 25.h,
                                                        child:Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                                Text("Number of Player:", style: P10),
                                                                Container(
                                                                    padding: EdgeInsets.only(top:2.sp,bottom:5.sp, left: 1.sp),
                                                                    width: 25.w,
                                                                    height: 25.h,
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromRGBO(220,228,248,1),
                                                                        borderRadius: BorderRadius.circular(4.sp),
                                                                        border: Border.all(color: Color.fromRGBO(220,228,248,1), width: 1),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                offset: Offset(2.sp, 2.sp),
                                                                                color: Colors.white70,
                                                                                // spreadRadius: -4.sp,
                                                                                blurRadius: 4.sp,
                                                                            ),
                                                                            BoxShadow(
                                                                                offset: Offset(-2.sp, -2.sp),
                                                                                color: Color.fromRGBO(186,195,223,1),
                                                                                // spreadRadius: -4.sp,
                                                                                blurRadius: 4.sp,
                                                                            ),
                                                                        ],
                                                                    ),
                                                                    child: Center(child: Text(
                                                                        "29",
                                                                        style: P10,
                                                                    )),
                                                                ),
                                                            ]
                                                        ),
                                                    )
                                                ),
                                                new Positioned(
                                                    top: 250.h, left: 75.w,
                                                    child: Container(
                                                        width: 120.w,height: 25.h,
                                                        child:Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                                Text("Number of Question:", style: P10),
                                                                Container(
                                                                    padding: EdgeInsets.only(top:2.sp,bottom:5.sp, left: 1.sp),
                                                                    width: 25.w,
                                                                    height: 25.h,
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromRGBO(220,228,248,1),
                                                                        borderRadius: BorderRadius.circular(4.sp),
                                                                        border: Border.all(color: Color.fromRGBO(220,228,248,1), width: 1),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                offset: Offset(2.sp, 2.sp),
                                                                                color: Colors.white70,
                                                                                // spreadRadius: -4.sp,
                                                                                blurRadius: 4.sp,
                                                                            ),
                                                                            BoxShadow(
                                                                                offset: Offset(-2.sp, -2.sp),
                                                                                color: Color.fromRGBO(186,195,223,1),
                                                                                // spreadRadius: -4.sp,
                                                                                blurRadius: 4.sp,
                                                                            ),
                                                                        ],
                                                                    ),
                                                                    child: Center(child: Text(
                                                                        "29",
                                                                        style: P10,
                                                                    )),
                                                                ),
                                                            ]
                                                        ),
                                                    )
                                                ),
                                                new Positioned(
                                                    top: 280.h, left: 75.w,
                                                    child: Container(
                                                        width: 120.w,height: 25.h,
                                                        child:Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                                Text("Time:", style: P10),
                                                                Container(
                                                                    padding: EdgeInsets.only(top:2.sp,bottom:5.sp, left: 1.sp),
                                                                    width: 50.w,
                                                                    height: 25.h,
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromRGBO(220,228,248,1),
                                                                        borderRadius: BorderRadius.circular(4.sp),
                                                                        border: Border.all(color: Color.fromRGBO(220,228,248,1), width: 1),
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                offset: Offset(2.sp, 2.sp),
                                                                                color: Colors.white70,
                                                                                // spreadRadius: -4.sp,
                                                                                blurRadius: 4.sp,
                                                                            ),
                                                                            BoxShadow(
                                                                                offset: Offset(-2.sp, -2.sp),
                                                                                color: Color.fromRGBO(186,195,223,1),
                                                                                // spreadRadius: -4.sp,
                                                                                blurRadius: 4.sp,
                                                                            ),
                                                                        ],
                                                                    ),
                                                                    child: Center(child: Text(
                                                                        "05:29",
                                                                        style: P10,
                                                                    )),
                                                                ),
                                                            ]
                                                        ),
                                                    )
                                                ),

                                            ]
                                        ),
                                    ),
                                ),
                               
                                SizedBox(height: 50.h),
                                SubmitButton(
                                    title: NEXT,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => WebExplaination(),
                                            ));
                                    },
                                ),
                        ]
                    )
                )
            )
        );
    }
}
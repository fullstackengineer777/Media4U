import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/total_result.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/question_button.dart';
import 'package:quizzerapp/widgets/question_box.dart';
import 'package:quizzerapp/widgets/explain_text.dart';
import 'package:quizzerapp/widgets/play_button.dart';


class GameWindow extends StatefulWidget{
    const GameWindow({super.key});

    @override
    State<GameWindow> createState() => _GameWindowState();
}

class _GameWindowState extends State<GameWindow>{

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
                                CustomAppBar(title: GAME_WINDOW),
                                SizedBox(height: 40.h),
                                SizedBox(height: 40.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text("Turn: ", style: P14),
                                        Container(
                                            padding: EdgeInsets.only(top:7.5.sp,bottom:7.5.sp, left: 7.5.sp),
                                            width: 120.w,
                                            height: 40.h,
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(220,228,248,1),
                                                borderRadius: BorderRadius.circular(10.sp),
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
                                                "Player1",
                                                style: P14,
                                            )),
                                        ),
                                        SubmitButton(
                                            title: NEXT,
                                            onTap: () {
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (context) => WebExplaination(),
                                                //     ));
                                            },
                                        ),
                                    ]
                                ),
                                SizedBox(height: 32.h),
                                Container(
                                    width: 180.w,
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text("Number of Yes: ", style: P14),
                                            Container(
                                                padding: EdgeInsets.only(top:2.sp,bottom:5.sp, left: 1.sp),
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(220,228,248,1),
                                                    borderRadius: BorderRadius.circular(3.sp),
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
                                                    "6",
                                                    style: P14,
                                                )),
                                            ),
                                        ]
                                    ),
                                ),
                                SizedBox(height: 32.h),
                                Container(
                                    width: 180.w,
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text("Time: ", style: P14),
                                            Container(
                                                padding: EdgeInsets.only(top:2.sp,bottom:5.sp, left: 1.sp),
                                                width: 60.w,
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
                                                    "03:26",
                                                    style: P14,
                                                )),
                                            ),
                                        ]
                                    ),
                                ),
                                SizedBox(height: 65.h),
                                Center(

                                    child: Container(
                                        width: 110.w,
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                PlayButton(url: "assets/images/pause.png"),
                                                PlayButton(url: "assets/images/play.png"),
                                            ]
                                        )
                                    ),
                                ),
                                SizedBox(height: 50.h),
                                SubmitButton(
                                    title: NEXT,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => TotalResult(),
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
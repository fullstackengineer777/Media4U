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


class VideoExplaination extends StatefulWidget{
    const VideoExplaination({super.key});

    @override
    State<VideoExplaination> createState() => _VideoExplainationState();
}

class _VideoExplainationState extends State<VideoExplaination>{

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
                                CustomAppBar(title: VIDEO_EXPLANATION),
                                SizedBox(height: 40.h),
                                ExplainText (
                                    height: 126.h,
                                    explaination: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout?"
                                ),
                                SizedBox(height: 59.h),
                                Center(
                                    child:Container(
                                        width: 180.w, height: 180.h,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage('assets/images/video_bk.png'), fit: BoxFit.fill),
                                            boxShadow: [
                                                BoxShadow(
                                                    offset: Offset(-2.sp, -2.sp),
                                                    blurRadius: 10.sp,
                                                    color: Color(0xFFFFFFFF),
                                                    spreadRadius: 0
                                                ),
                                                BoxShadow(
                                                    offset: Offset(2.sp, 2.sp),
                                                    blurRadius: 18.sp,
                                                    color: Color(0xFF8893F0),
                                                    spreadRadius: 0
                                                )
                                            ]
                                        ),
                                        child: Center(
                                            child: Container(
                                                width: 40.w, height: 40.h,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(image: AssetImage('assets/images/video_play.png'), fit: BoxFit.fill),
                                                )
                                                // child: InkWell(

                                                // )
                                            )
                                        )
                                    )
                                ),
                                SizedBox(height: 134.h),
                                SubmitButton(
                                    title: BACK,
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
import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AnswerText extends StatefulWidget {
  AnswerText({required this.answer, super.key});

  String answer;

  @override
  State<AnswerText> createState() => _AnswerTextState();
}

class _AnswerTextState extends State<AnswerText> {
  @override
  Widget build(BuildContext context) {
    return  new Container(
            height: 175.h,
            width: MediaQuery.of(context).size.width,
            child: Container(
                padding: EdgeInsets.only(top:13.h, bottom:13.h, left:20.w, right:20.w ),
                height: 122.h,
                width: MediaQuery.of(context).size.width - 42.w,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(220,228,248,1),
                    borderRadius: BorderRadius.circular(10.sp),
                    border: Border.all(color: Color.fromRGBO(220,228,248,1), width: 1),
                    boxShadow: [
                        // BoxShadow(
                        //   color: Colors.green,
                        // ),
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
                child: TextField(            
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.left,
                            maxLines: 10,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Input your answer here",
                            hintStyle: P13,
                            contentPadding: EdgeInsets.only(
                            // bottom: 22.sp,
                            ),
                        ),
                        style: P13,
                ),
            )
    
        
    );
  }
}

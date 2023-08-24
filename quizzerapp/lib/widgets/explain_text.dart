import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ExplainText extends StatefulWidget {
  ExplainText({required this.explaination, required this.height, super.key});

  String explaination;
  double height;
  @override
  State<ExplainText> createState() => _ExplainTextState();
}

class _ExplainTextState extends State<ExplainText> {
  @override
  Widget build(BuildContext context) {
    return  new Container(
            height: widget.height,
            width: MediaQuery.of(context).size.width,
            child: Container(
                padding: EdgeInsets.only(top:36.h, bottom:36.h, left:20.w, right:20.w ),
                height: widget.height - 72.h,
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
                            offset: Offset(10.sp, 10.sp),
                            color: Color.fromRGBO(194,204,235,1),
                            // spreadRadius: -4.sp,
                            blurRadius: 20.sp,
                        ),
                        BoxShadow(
                            offset: Offset(-10.sp, -10.sp),
                            color: Color.fromRGBO(234,239,255,1),
                            // spreadRadius: -4.sp,
                            blurRadius: 16.sp,
                        ),
                    ],
                ),
                child: Text(            
                        widget.explaination, style: P14
                ),
            )
    
        
    );
  }
}

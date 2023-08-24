import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ExplainTextWeb extends StatefulWidget {
  ExplainTextWeb({required this.explaination,  super.key});

  String explaination;
  @override
  State<ExplainTextWeb> createState() => _ExplainTextWebState();
}

class _ExplainTextWebState extends State<ExplainTextWeb> {
  @override
  Widget build(BuildContext context) {
    return  new Container(
            height: 44.h,
            width: MediaQuery.of(context).size.width,
            child: Container(
                padding: EdgeInsets.only(top:10.h, bottom:10.h, left:20.w, right:20.w ),
                height: 44.h,
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
                    widget.explaination, 
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(59, 79, 125, 1),
                        decoration: TextDecoration.underline,
                    ),
                ),
            )
    
        
    );
  }
}

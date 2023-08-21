import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/box.dart';

class QuestionWidget extends StatefulWidget {
  QuestionWidget({required this.question, super.key});

  String question;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return  new Container(
            height: 150.h,
            width: MediaQuery.of(context).size.width,
            child: new Stack(
                children: <Widget>[                  
                  
                    new Positioned(
                        top: 20.h,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(220,228,248,1),
                                borderRadius: BorderRadius.circular(10.sp),
                                border: Border.all(color: Color.fromRGBO(255, 255, 243, 1), width: 1),          
                            ),
                            padding: EdgeInsets.all(2.0.sp),
                            child: Container(
                                padding: EdgeInsets.only(top:30.sp, bottom:30.sp, left:12.sp, right:18.sp ),
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
                                child: Text(            
                                        widget.question,
                                        style: P13,
                                ),
                            )
                        ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                            Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/vector.png"), fit: BoxFit.fill)),
                                // BoxDecoration(
                                //     border: Border.all(color: Color.fromRGBO(214, 227, 243, 1), width: 1),
                                //     image: DecorationImage(image: AssetImage("assets/images/vector.png"), fit: BoxFit.fill),
                                // ),
                                child: Center(child: Text("Question", style: P14))
                            ),
                        ]
                    )
                ]
            )
        
    );
  }
}

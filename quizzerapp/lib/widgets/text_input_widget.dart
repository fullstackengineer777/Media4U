import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/box.dart';

class TextInputWidget extends StatefulWidget {
  TextInputWidget({required this.hintText, this.icon, super.key});

  String hintText;
  String? icon;

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      // decoration: BoxStyles.borderDecoration(
      //     context,
      //     Color.fromRGBO(214, 227, 243, 0.5),
      //     Color.fromRGBO(255, 255, 255, 0.5),
      //     Colors.white,
      //     Color.fromRGBO(140, 146, 159, 0.2),
      //     Color.fromRGBO(220, 228, 248, 1),
      //     10),

      decoration: BoxDecoration(
          color: Color.fromRGBO(220,228,248,1),
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(color: Color.fromRGBO(255, 255, 243, 1), width: 1),          
      ),
      padding: EdgeInsets.all(2.0.sp),
      child: Container(
          padding: EdgeInsets.only(top:7.5.sp,bottom:7.5.sp,),
          height: 44.h,
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
            // textCapitalization: TextCapitalization.words,
            // textInputAction: TextInputAction.next,
            // textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
                maxLines: 1,
            decoration: InputDecoration(
                prefixIcon:
                    widget.icon != null ? Image.asset(widget.icon ?? '') : null,
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: P13,
                contentPadding: EdgeInsets.only(
                  bottom: 22.sp,
                ),
            ),
            style: P13,
          ),
      )
    );
  }
}

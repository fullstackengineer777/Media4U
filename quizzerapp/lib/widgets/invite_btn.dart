import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

class InviteButton extends StatelessWidget {
  final VoidCallback? onTap;

  const InviteButton({Key? key, this.onTap, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 34.h,
          width: 81.w,
          decoration: BoxDecoration(
            // color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
              borderRadius: BorderRadius.circular(20.sp),
              border: Border.all(color: Color.fromRGBO(214, 227, 243, 1), width: 1),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[
                      Color.fromRGBO(126,139,238,1),
                      Color.fromRGBO(91,111,228,1)
                  ]
              ),
              boxShadow: [
                  BoxShadow(
                      offset: Offset(-4.sp, -4.sp),
                      blurRadius: 8.sp,
                      color: Color(0xFFE9EDFF),
                      spreadRadius: 0
                  ),
                  BoxShadow(
                      offset: Offset(4.sp, 4.sp),
                      blurRadius: 8.sp,
                      color: Color(0xFFC4CEF2),
                      spreadRadius: 0
                  )
              ]
          ),
          padding: EdgeInsets.all(1.0.sp),
          child: SizedBox(
            height: 30.h,
            width: 77.w,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                // color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
                borderRadius: BorderRadius.circular(20.sp),
                border: Border.all( color: Color.fromRGBO(214, 227, 243, 1), width: 1),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops:[0, 1],
                    colors: [
                        Color.fromRGBO(81,99,224,1),
                        Color.fromRGBO(193,198,237,1)
                    ]
                )
              ),
              child: Center(
                child: Text(
                  INVITE,
                  style: P14_WHITE
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

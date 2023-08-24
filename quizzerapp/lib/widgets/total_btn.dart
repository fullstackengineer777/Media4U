import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';

class TotalButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final Color? fillColor;
  final double? width;
  final double? height;
  

  const TotalButton({Key? key, this.onTap, required this.title, this.fillColor, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: this.height?? 44.h,
          width: this.width?? 136.w,
          decoration: BoxDecoration(
            color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(color: Color.fromRGBO(255, 255, 255, 1), width: 1),
              // gradient: LinearGradient(
              //     begin: Alignment.topRight,
              //     end: Alignment.bottomLeft,
              //     colors:[
              //         Color.fromRGBO(126,139,238,1),
              //         Color.fromRGBO(91,111,228,1)
              //     ]
              // ),
              boxShadow: [
                  BoxShadow(
                      offset: Offset(3.sp, 3.sp),
                      blurRadius: 20.sp,
                      color: Color.fromRGBO(111,140,176,1),
                      spreadRadius: 0
                  ),
                  BoxShadow(
                      offset: Offset(-6.sp, -6.sp),
                      blurRadius: 20.sp,
                      color: Color(0xFFFFFFFF),
                      spreadRadius: 0
                  ),
              ]
          ),
          padding: EdgeInsets.all(1.0.sp),
          child: Center(
              child: Text(
                  this.title,
                  style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(139, 158, 176, 1),
                        ),
              ),
          ),
        ),
      ),
    );
  }
}

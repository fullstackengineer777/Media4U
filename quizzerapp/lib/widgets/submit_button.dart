import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  final Color? fillColor;

  const SubmitButton({Key? key, this.onTap, this.title, this.fillColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 44.h,
          width: 136.w,
          decoration: BoxDecoration(
            // color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
              borderRadius: BorderRadius.circular(10.sp),
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
            height: 40.h,
            width: 132.w,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                // color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
                borderRadius: BorderRadius.circular(10.sp),
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
                // boxShadow: const [
                //   BoxShadow(
                //     color: Color.fromRGBO(140, 146, 159, 1),
                //   ),
                //   BoxShadow(
                //     color: Color.fromRGBO(220, 228, 248, 0.5),
                //     spreadRadius: -6.0,
                //     blurRadius: 6.0,
                //   ),
                // ],
              ),
              child: Center(
                child: Text(
                  title ?? '',
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

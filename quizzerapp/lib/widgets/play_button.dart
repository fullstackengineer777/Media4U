import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';

class PlayButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String url;

  const PlayButton({Key? key, this.onTap, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 44.h,
          width: 44.w,
          decoration: BoxDecoration(
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
              ),
              child: Center(
                child: Container(
                        width: 13.w, height: 16.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
                    )
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}

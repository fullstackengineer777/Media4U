import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/box.dart';

class ProfilePhotos extends StatefulWidget {
  ProfilePhotos({super.key});

//   String hintText;
//   String? icon;

  @override
  State<ProfilePhotos> createState() => _ProfilePhotosState();
}

class _ProfilePhotosState extends State<ProfilePhotos> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h, width: 317.w,
        decoration: BoxDecoration(
            color: Color.fromRGBO(220,228,248,1),
            borderRadius: BorderRadius.circular(10.sp),
            border: Border.all(color: Color.fromRGBO(255, 255, 243, 1), width: 1),          
        ),
        padding: EdgeInsets.all(2.0.sp),
        child: Container(
            padding: EdgeInsets.only(top:7.5.sp,bottom:7.5.sp,),
            height: 76.h, width: 313.w,
        
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
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                        width: 98.w, height: 60.h,
                        
                    ),
                    VerticalDivider(color: Color.fromRGBO(59,79,125,0.3), width: 3.w, thickness: 1.h),
                    Container(
                        width: 98.w, height: 60.h
                    ),
                    VerticalDivider(color: Color.fromRGBO(59,79,125,0.3), width: 3.w, thickness: 1.h),
                    Container(
                        width: 98.w, height: 60.h
                    )
                ]
            ),
        )
    );
  }
}

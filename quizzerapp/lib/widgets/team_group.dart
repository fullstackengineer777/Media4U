import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:flexible_scrollbar/flexible_scrollbar.dart';

import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/team_manage_item.dart';
import 'package:quizzerapp/widgets/team_item.dart';

class TeamGroup extends StatefulWidget {
  TeamGroup({super.key});

//   String hintText;
//   String? icon;

  @override
  State<TeamGroup> createState() => _TeamGroupState();
}

class _TeamGroupState extends State<TeamGroup> {
  final ScrollController scrollController = ScrollController();
  BarPosition barPosition = BarPosition.end;
  Axis scrollDirection = Axis.vertical;
  final double thumbWidth = 5.sp;
  final double thumbDragWidth = 10.sp;
  final animationDuration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(
          color: Color.fromRGBO(220,228,248,1),
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(color: Color.fromRGBO(255, 255, 243, 1), width: 1),          
      ),
      padding: EdgeInsets.all(2.0.sp),
      child: Container(
            padding: EdgeInsets.only(top:7.5.sp,bottom:7.5.sp,),
            height: 186.h,
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
            child: Container(
                padding: EdgeInsets.all(10.w),
                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        // SizedBox(height: )
                        // SizedBox(height: 10.h),
                        Text("Team 1", style: P12),
                        SizedBox(height: 5.h),
                        TeamItem(title: "Champ 1, Champ 2, Champ 3", height: 38.h),
                        SizedBox(height: 23.h),
                        Text("Team 2", style: P12),
                        SizedBox(height: 5.h),
                        TeamItem(title: "Champ 1, Champ 2, Champ 3", height: 38.h),
                    ]
                )
            )
        
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:flexible_scrollbar/flexible_scrollbar.dart';

import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/team_manage_item.dart';

class TeamManage extends StatefulWidget {
  TeamManage({super.key});

//   String hintText;
//   String? icon;

  @override
  State<TeamManage> createState() => _TeamManageState();
}

class _TeamManageState extends State<TeamManage> {
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
            height: 250.h,
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
            child: new Stack(
                children: <Widget>[
                      Scrollbar(
                          thickness: 10,
                          thumbVisibility: true,
                          radius: const Radius.circular(10),
                          // barPosition: BarPosition.start,
                          child:  
                            // Container(
                            //     decoration: BoxDecoration(
                            //       border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 3),
                            //     )
                            // )
                          ListView(
                               // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start ,
                                children: <Widget>[
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ1"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ2"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ3"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ4"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ5"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ6"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ7"),
                                    SizedBox(height: 10.h),
                                    TeamManageItem(icon:"assets/images/diana.png", name: "Champ8"),
                                ],
                          ),
                    ),
                    new Positioned(
                          left: 200.w,
                          child: Column(
                              children: [
                                  SubmitButton(title: "Team" , width: 80.w),
                                  SizedBox(height: 10.h),
                                  SubmitButton(title: "Add", width: 80.w),
                              ]
                          )
                    )
                    
                ]
            )
            // child: FlexibleScrollbar(
            //     controller: scrollController,
            //     barPosition: barPosition,
            //     scrollLineCrossAxisSize: thumbDragWidth,
            //     scrollThumbBuilder: (ScrollbarInfo info) {
            //         return AnimatedContainer(
            //             width: 20.w,
            //             height: 50.h,
            //             // width: isVertical
            //             //     ? info.isDragging ? thumbDragWidth : thumbWidth
            //             //     : info.thumbMainAxisSize,
            //             // height: !isVertical
            //             //     ? info.isDragging ? thumbDragWidth : thumbWidth
            //             //     : info.thumbMainAxisSize,
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(5),
            //                 color: Colors.black.withOpacity(info.isDragging ? 1 : 0.6),
            //             ),
            //             duration: animationDuration,
            //         );
            //     },
            //     child: ListView(
            //         children: <Widget>[
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //             SubmitButton(title: "test"),
            //         ],
            //     )
            //     // child: Row(
            //     //     children: [
            //     //         Column(
            //     //             children: [
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //                 SubmitButton(title: "test"),
            //     //             ]
            //     //         ),
            //     //         Column(
            //     //             children:[
            //     //                 SubmitButton(
            //     //                     title: "Team",
            //     //                     onTap: () {
            //     //                         // Navigator.push(
            //     //                         //     context,
            //     //                         //     MaterialPageRoute(
            //     //                         //         builder: (context) => WebExplaination(),
            //     //                         //     ));
            //     //                     },
            //     //                 ),
            //     //                 SizedBox(height: 11.h),
            //     //                 SubmitButton(
            //     //                     title: "Add",
            //     //                     onTap: () {
            //     //                         // Navigator.push(
            //     //                         //     context,
            //     //                         //     MaterialPageRoute(
            //     //                         //         builder: (context) => WebExplaination(),
            //     //                         //     ));
            //     //                     },
            //     //                 ),
            //     //             ]
            //     //         )
            //     //     ]
            //     // )
            // )
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

import 'package:quizzerapp/widgets/invite_btn.dart';
import 'package:quizzerapp/widgets/invited_btn.dart';

class SearchItem extends StatefulWidget {
  SearchItem({required this.name, this.icon, required this.invited,  super.key});

  String name;
  String? icon;
  
  bool invited;

  @override
  State<SearchItem> createState() => _SearchItemState();
}

class _SearchItemState extends State<SearchItem> {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      decoration: BoxDecoration(
        //   color: Color.fromRGBO(220,228,248,1),
          border: Border(
                bottom: BorderSide(color: Color.fromRGBO(243, 247, 250, 1), width: 1),          
          )
      ),
      padding: EdgeInsets.only(left: 9.w, right: 9.w),
      child: Container(
            height: 65.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                    Container(
                        child: Row(
                            children: [
                                Container(
                                    width: 48.w, height: 48.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30.sp),
                                        image: DecorationImage(image: AssetImage(widget.icon ?? 'assets/images/profile.png'), fit: BoxFit.fill),
                                        boxShadow:[
                                                BoxShadow(
                                                    offset: Offset(-2.sp, -2.sp),
                                                    blurRadius: 4.sp,
                                                    color: Color(0xFFFFFFFF),
                                                    spreadRadius: 0
                                                ),
                                                BoxShadow(
                                                    offset: Offset(2.sp, 2.sp),
                                                    blurRadius: 4.sp,
                                                    color: Color(0xFF8893F0),
                                                    spreadRadius: 0,
                                                )
                                        ]
                                    )
                                ),
                                SizedBox(width: 34.2),
                                Text(widget.name, style: P16)
                            ]
                        )
                    ),
                    widget.invited ? InvitedButton() : InviteButton()
                ]
            )
            

      )
    );
  }
}

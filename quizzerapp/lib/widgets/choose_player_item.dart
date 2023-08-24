import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

import 'package:quizzerapp/widgets/invite_btn.dart';
import 'package:quizzerapp/widgets/invited_btn.dart';

class ChoosePlayerItem extends StatefulWidget {
  ChoosePlayerItem({required this.name, this.icon, required this.invited,  super.key});

  String name;
  String? icon;
  
  bool invited;

  @override
  State<ChoosePlayerItem> createState() => _ChoosePlayerItemState();
}

class _ChoosePlayerItemState extends State<ChoosePlayerItem> {

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
                    InkWell(
                        onTap: (){
                                // Navigator.pushReplacement(
                                //     context,
                                //     MaterialPageRoute(
                                //     builder: (context) => const InviteFriend(),
                                // ));
                        },
                        child: Container(
                            width: 14.w,
                            height: 14.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/choose_player.png'), fit: BoxFit.fill),
                                // color: Color.fromRGBO(230,231,253,1),
                                // borderRadius: BorderRadius.circular(20.sp),
                            ),
                            child: Center(
                                // child: Text(INVITE_FRIEND, style: P14)
                            )
                        )
                        
                    )
                ]
            )
            

      )
    );
  }
}

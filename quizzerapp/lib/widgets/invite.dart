import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

class Invite extends StatelessWidget implements PreferredSizeWidget {


  Invite();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/invitebk.png"), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20.sp),
            // border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 3),
            gradient: LinearGradient(
                begin: Alignment(-0.8, -1),
                end: Alignment(0.8, 1),
                colors:[
                    Color.fromRGBO(81,99,224,1),
                    Color.fromRGBO(136,147,240,1)
                ]
            )
      ),
      child: Padding(
            padding: EdgeInsets.all(20.w),
            child: 
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(INVITE_SENTENCE, style: Head3_WHITE),
                        SizedBox(height: 19.h),
                        InkWell(
                            onTap: (){},
                            child: Container(
                                width: 107.w,
                                height: 34.h,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(230,231,253,1),
                                    borderRadius: BorderRadius.circular(20.sp),
                                ),
                                child: Center(
                                    child: Text(INVITE_FRIEND, style: P14)
                                )
                            )
                            
                        )
                    ]
                )
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

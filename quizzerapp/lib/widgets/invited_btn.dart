import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

class InvitedButton extends StatelessWidget {
    final VoidCallback? onTap;

    const InvitedButton({Key? key, this.onTap, })
        : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Center(
        child: InkWell(
            onTap: onTap,
            child: Container(
                width: 81.w, height: 34.h,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(230,231,253,1),
                    borderRadius: BorderRadius.circular(20.sp),
                ),
                child: Center(child: Text(INVITED, style: P14))
            )
        ),
        );
    }
}

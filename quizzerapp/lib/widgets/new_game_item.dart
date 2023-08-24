import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

class NewGameItem  extends StatelessWidget {

  final String? title;
  final String? url;
  final double? tit_width;
  final double? tit_top;
  final double? tit_height;
  final double? height;
    
  NewGameItem({Key? key, this.title, this.url, this.tit_width, this.tit_top, this.height, this.tit_height}):super(key:key);

  @override
  Widget build(BuildContext context) {

    return Container(
        width: this.tit_width ?? 149.w,
        height: this.height ?? 122.h,
        decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                image: DecorationImage(image: AssetImage(url ?? 'assets/images/new_game1.png'), fit: BoxFit.fill),
        ),
        child: new Stack(
                children: <Widget>[  
                    new Positioned(
                        top: this.tit_top ?? 110.h,
                        child: Container(
                                width: this.tit_width ?? 122.w,
                                height: this.tit_height ?? 32.h,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 3),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.sp), bottomRight: Radius.circular(20.sp)),
                                    gradient: LinearGradient(
                                        begin: Alignment(-0.8, -2),
                                        end: Alignment(0.8, 2),
                                        colors:[
                                            Color.fromRGBO(81,99,224,1),
                                            Color.fromRGBO(136,147,240,1)
                                        ]
                                    )
                                ),
                                child: Center(
                                    child: Text(title ?? 'Game 1', style: Head6_WHITE)
                                )
                                
                        ),
                    )
                ]
        )
        
        
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

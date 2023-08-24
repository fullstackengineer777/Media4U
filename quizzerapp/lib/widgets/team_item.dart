import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';

class TeamItem extends StatefulWidget{

    final String title;
    final double? width;
    final double height;

    TeamItem({super.key, required this.title, required this.height,  this.width});
    // TeamItem({Key? key}): super(key: key);

    @override
    State<TeamItem> createState() => _TeamItemState();
}

class _TeamItemState extends State<TeamItem>{
    bool checked = false;

    @override
    Widget build(BuildContext context){
        return Center(
            // width: width,
            child: InkWell(
                onTap: (){},
                child: Container(
                    height: widget.height,
                    padding: EdgeInsets.only(left: 10.w, right: 20.w),
                    // child: Text(widget.title)
                    decoration: BoxDecoration(
                        // color: Color.fromRGBO(0, 0, 224, 1),
                        // borderRadius: BorderRadius.circular(10.sp),
                        border: Border.all(color: Color.fromRGBO(214, 227, 243, 1), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment(1,0),
                            end: Alignment(-1,0),
                            colors: [
                                Color.fromRGBO(231,238,255,1),
                                Color.fromRGBO(224,234,255,1)
                            ]
                        ),
                        boxShadow: [
                            BoxShadow(
                                offset: Offset(-5.sp, -5.sp),
                                blurRadius: 8.sp,
                                color: Color(0xFFEAEFFF),
                                spreadRadius: 0
                            ),
                            BoxShadow(
                                offset: Offset(5.sp, 5.sp),
                                blurRadius: 10.sp,
                                color: Color(0xFFC2CCEB),
                                spreadRadius: 0
                            )
                        ]
                    ),
                    child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children:[
                            // SizedBox(width: 5.w),
                            Text(widget.title, style: P14),
                            Container(
                                width: 10.7.w, height: 10.7.h,
                                decoration: BoxDecoration(                        
                                    image: DecorationImage(image: AssetImage('assets/images/remove_team.png'), fit: BoxFit.fill),
                                )
                            ),
                        ]
                    )
                )
            )
        );
    }
}
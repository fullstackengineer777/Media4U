import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

class CustomNavigationBar  extends StatelessWidget {

  final String? title;
  final String? url;
  CustomNavigationBar({Key? key, this.title, this.url}):super(key:key);

  @override
  Widget build(BuildContext context) {

    return Container(
        width: MediaQuery.of(context).size.width,
        height: 122.h,
        decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20.sp),
                border: Border.all(color: Color.fromRGBO(255, 255, 243, 1), width: 1),    
                
        ),
        child: new Stack(
                children: <Widget>[  
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children:[
                            Container(
                                width: 75.w,
                                height: 75.h,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(136,147,240,1),
                                    borderRadius: BorderRadius.all(Radius.circular(40.sp)),
                                ),
                                child: Center(
                                        child: Container(
                                            width: 28.94.w, height: 28.94.h,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(image: AssetImage('assets/images/game.png'), fit: BoxFit.fill),
                                        )
                                    )
                                )
                            )

                        ]
                        
                    ),
                    new Positioned(
                        top: 36.97.h,
                        child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 98.36.h,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 3),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.sp), bottomRight: Radius.circular(20.sp)),
                                    image: DecorationImage(image: AssetImage(url ?? 'assets/images/menu_background.png'), fit: BoxFit.fill),
                                   
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Container(
                                            width: 75.w, height: 80.h,
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 1),
                                            // ),
                                            child: Padding(
                                                padding: EdgeInsets.only(top: 18.h, right: 11.w, bottom: 12.h, left: 11.w),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Container(
                                                            width: 21.w, height: 21.h,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage('assets/images/statistics.png'), fit: BoxFit.fill),
                                                            )
                                                        ),
                                                        Text(STATISTICS, style: P10_white)
                                                    ]
                                                )
                                            )
                                        ),
                                        Container(
                                            width: 75.w, height: 80.h,
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 1),
                                            // ),
                                            child: Padding(
                                                padding: EdgeInsets.only(top: 18.h, right: 11.w, bottom: 9.h, left: 11.w),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Container(
                                                            width: 21.w, height: 21.h,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage('assets/images/info.png'), fit: BoxFit.fill),
                                                            )
                                                        ),
                                                        Text(INFO, style: P10_white)
                                                    ]
                                                )
                                            )
                                        ),
                                        Container(
                                            width: 75.w, height: 80.h,
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 1),
                                            // ),
                                            child: Padding(
                                                padding: EdgeInsets.only(top: 18.h, right: 11.w, bottom: 9.h, left: 11.w),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Container(
                                                            width: 21.w, height: 21.h,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage(""), fit: BoxFit.fill),
                                                            )
                                                        ),
                                                        Text(GAMES, style: P10_white)
                                                    ]
                                                )
                                            )
                                        ),
                                        Container(
                                            width: 75.w, height: 80.h,
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 1),
                                            // ),
                                            child: Padding(
                                                padding: EdgeInsets.only(top: 18.h, right: 9.w, bottom: 9.h, left: 9.w),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Container(
                                                            width: 21.w, height: 21.h,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage('assets/images/notification.png'), fit: BoxFit.fill),
                                                            )
                                                        ),
                                                        Text(NOTIFICATION, style: P10_white)
                                                    ]
                                                )
                                            )
                                        ),
                                        Container(
                                            width: 75.w, height: 80.h,
                                            // decoration: BoxDecoration(
                                            //     border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 1),
                                            // ),
                                            child: Padding(
                                                padding: EdgeInsets.only(top: 18.h, right: 11.w, bottom: 9.h, left: 11.w),
                                                child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Container(
                                                            width: 21.w, height: 21.h,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(image: AssetImage('assets/images/more_square.png'), fit: BoxFit.fill),
                                                            )
                                                        ),
                                                        Text(PROFILE, style: P10_white)
                                                    ]
                                                )
                                            )
                                        ),
                                    ]
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

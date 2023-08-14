import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "Colors.dart";

class StoryWindow extends StatelessWidget {
    const StoryWindow({Key? key}): super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(
            decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [gdBKStart, Colors.white]
                    )
                ),
            child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                    leading: Image.asset('assets/images/Back.png'),
                    // leading: IconButton(
                    //     onPressed: (){},
                    //     icon: Image.asset('assets/images/Back.png')
                    // ),
                    title: Text("Story Window",
                            style: TextStyle(
                                fontSize: 16.sp,
                                // fontWeight: FontWeight.regular,
                                color: txtColor,    
                            )),
                    actions:<Widget>[
                        Image.asset('assets/images/Logo_Action.png',height:15.h),
                    ],
                    centerTitle: true,
                    shape: Border(
                            bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                            )
                        ),
                    backgroundColor: gdBKStart,
                    toolbarHeight: 50.h,
                    elevation: 0.0,

                ),
                body: Column(
                    children:[
                        Padding(
                            padding: EdgeInsets.all(29.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    SizedBox( height: 44.h), 
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                            Text("Story :",
                                                style: TextStyle(fontSize: 14.sp, color: txtColor)
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(left:17.w, right: 17.w, top: 35.h, bottom: 35.h),
                                                height: 235.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: txtBoxColor,
                                                    borderRadius:  BorderRadius.only(
                                                        topLeft: Radius.circular(10.sp),
                                                        topRight: Radius.circular(10.sp),
                                                        bottomLeft: Radius.circular(10.sp),
                                                        bottomRight: Radius.circular(10.sp)),
                                                    boxShadow: [
                                                        BoxShadow(
                                                            color: shadow1, //shadow color
                                                            spreadRadius: 0, // spread radius
                                                            blurRadius: 4, // shadow blur radius
                                                            offset: const Offset(2, 2), // changes position of shadow
                                                        ),
                                                        BoxShadow(
                                                            color: Colors.white, //shadow color
                                                            spreadRadius: 0, // spread radius
                                                            blurRadius: 4, // shadow blur radius
                                                            offset: const Offset(-2, -2), // changes position of shadow
                                                        ),
                                                    ],
                                                ),
                                                child:  Text(
                                                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long fact that a reader will be distracted by the readable of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long fact that a reader will be distracted by the readable of a page when looking at its layout?",
                                                    style: TextStyle(fontSize: 14.sp, color: txtColor),
                                                ),

                                            ),       
                                            SizedBox(height: 13.h),
                                            Text("Question :",
                                                style: TextStyle(fontSize: 14.sp, color: txtColor)
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(left:17.w, right: 17.w, top: 17.h, bottom: 17.h),
                                                height: 66.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: txtBoxColor,
                                                    borderRadius:  BorderRadius.only(
                                                        topLeft: Radius.circular(10.sp),
                                                        topRight: Radius.circular(10.sp),
                                                        bottomLeft: Radius.circular(10.sp),
                                                        bottomRight: Radius.circular(10.sp)),
                                                    boxShadow: [
                                                        BoxShadow(
                                                            color: shadow1, //shadow color
                                                            spreadRadius: 0, // spread radius
                                                            blurRadius: 4, // shadow blur radius
                                                            offset: const Offset(2, 2), // changes position of shadow
                                                        ),
                                                        BoxShadow(
                                                            color: Colors.white, //shadow color
                                                            spreadRadius: 0, // spread radius
                                                            blurRadius: 4, // shadow blur radius
                                                            offset: const Offset(-2, -2), // changes position of shadow
                                                        ),
                                                    ],
                                                ),
                                                child:  Text(
                                                    "Reader will be distracted by the readable of a page when looking at its layout?",
                                                    style: TextStyle(fontSize: 14.sp, color: txtColor),
                                                ),

                                            ),                                              
                                            SizedBox(height: 58.h),
                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:[
                                                    SizedBox(
                                                        // width: MediaQuery.of(context).size.width * 0.6,
                                                        width: 132.w,
                                                        height: 40.h,
                                                        child: DecoratedBox(
                                                            decoration: BoxDecoration(
                                                                gradient: LinearGradient(
                                                                    colors: [
                                                                        gradBtnStart, gradBtnEnd  
                                                                    ],
                                                                    transform: GradientRotation(144 * 3.141592653589793 / 180),
                                                                ),
                                                                borderRadius: BorderRadius.circular(10.sp),
                                                                // boxShadow: <BoxShadow>[
                                                                //     BoxShadow(
                                                                //         color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                                                                //         blurRadius: 5) //blur radius of shadow
                                                                // ]
                                                            ),
                                                            child:ElevatedButton(
                                                                style: ElevatedButton.styleFrom(
                                                                    primary: Colors.transparent,
                                                                    onSurface: Colors.transparent,
                                                                    shadowColor: Colors.transparent,
                                                                    //make color or elevated button transparent
                                                                ),
                                                            
                                                                onPressed: (){
                                                                    print("You pressed Sign up Button");
                                                                }, 
                                                                child:Text("Next", style:TextStyle(
                                                                    fontSize: 14.sp,
                                                                    fontWeight: FontWeight.bold,
                                                                )),
                                                            )  
                                                        ),

                                                    ),
                                                    Row()
                                                ]
                                            )
                                        ]
                                    ),
                                ]
                            )
                        ),
                    ]
                ),
            ),
        );
    }
}
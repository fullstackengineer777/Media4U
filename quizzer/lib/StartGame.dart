import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "Colors.dart";

class StartGame extends StatelessWidget{
    const StartGame({Key? key}): super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(
            decoration: BoxDecoration(
                    gradient:  SweepGradient(
                        center: FractionalOffset(0.5272, 0.3087),
                        // startAngle: 135,
                        colors: [
                            Color.fromRGBO(98, 132, 255, 0.30),
                            Color.fromRGBO(255, 114, 182, 0.30),
                            Color.fromRGBO(249, 229, 232, 0.30),
                            Color.fromRGBO(151, 225, 212, 0.30),
                        ],
                        stops: [
                            0.3045651286840439,
                            0.5142127811908722,
                            0.9469802856445312,
                            1.691589081287384,
                        ],
                    ),
                ),
            child: Scaffold(
                body: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        SizedBox(height: 100.h, width:  MediaQuery.of(context).size.width),
                        Image.asset(
                            'assets/images/logo.png',
                            height: 92.h,
                            fit: BoxFit.cover,
                        ),
                        SizedBox(height: 15.h),
                        Text(
                            'Quizzer',
                            style: TextStyle(
                                fontSize: 32.sp,
                                color: txtColor,
                                fontWeight: FontWeight.bold,
                            )
                        ),    
                        Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    SizedBox( height: 359.h),
                                    SizedBox(
                                        // width: MediaQuery.of(context).size.width * 0.6,
                                        width: 142.w,
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
                                                // child: Padding(
                                                //     padding:EdgeInsets.only(
                                                //         top: 18,
                                                //         bottom: 18,
                                                //     ),
                                                    child:Text("Network", style:TextStyle(
                                                        fontSize: 14.sp,
                                                        // fontWeight: FontWeight.bold,
                                                    )),
                                                // )
                                            )  
                                        ),

                                    ),
                                    SizedBox( height: 24.h),
                                    SizedBox(
                                        // width: MediaQuery.of(context).size.width * 0.6,
                                        width: 142.w,
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
                                                    print("You pressed No Network Button");
                                                }, 
                                                // child: Padding(
                                                //     padding:EdgeInsets.only(
                                                //         top: 18,
                                                //         bottom: 18,
                                                //     ),
                                                    child:Text("No Network", style:TextStyle(
                                                        fontSize: 14.sp,
                                                        // fontWeight: FontWeight.bold,
                                                    )),
                                                // )
                                            )  
                                        ),

                                    ),
                                    // Row(
                                    //     // mainAxisAlignment: MainAxisAlignment.center,
                                    //     children: [
                                            
                                    //     ]
                                    // )
                                ]
                            )
                        ),
                    ]
                ),
              
            ),
        );
    }
}
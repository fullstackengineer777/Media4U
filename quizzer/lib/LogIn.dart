import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "Colors.dart";

class Login extends StatelessWidget{
    const Login({Key? key}): super(key: key);

    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: bkColor,
            // appBar: AppBar(
            //     leading: BackButton(),
            //     centerTitle: true,
            //     title: Text("Log in",
            //             style: TextStyle(
            //                 fontSize: 16.sp,
            //                 // fontWeight: FontWeight.regular,
            //                 color: txtColor,    
            //             )),
            //     shape: Border(
            //             bottom: BorderSide(
            //                 color: Colors.white,
            //                 width: 1.0,
            //             )
            //         ),
            //     backgroundColor: bkColor,
            //     toolbarHeight: 25,
            // ),
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // color: Color.fromRGBO(0, 0, 255, 1), 
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops:[
                            0.1,0.4,0.8,1
                        ],
                        colors: [
                            Color.fromRGBO(249, 229, 232, 0.3),
                            Color.fromRGBO(98, 132, 255, 0.2),
                            // Color.fromRGBO(98, 132, 255, 0.2),
                            Color.fromRGBO(255, 114, 182, 0.2),
                            Color.fromRGBO(151, 255, 212, 0.3),
                        ]
                    )
                ),
                child: Column(
                    children:[
                        SizedBox(height: 30.h),
                    ]
                )
            )
            // Column(
            //     // crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //         // SizedBox(height: 30.h),
            //         Padding(
            //             padding: EdgeInsets.all(29.h),
            //             child: Column(
            //                 children: [
            //                     SizedBox(
            //                         height: 60.h,
            //                         child: Row(
            //                             // mainAxisAlignment: MainAxisAlignment.center,
            //                             children: [
            //                                 SizedBox(
            //                                     height: 25.h,
            //                                     child: InkWell(
            //                                         onTap: (){
            //                                             Navigator.pop(context);
            //                                         },
            //                                         child: Image.asset("assets/images/Back.png")
            //                                     )
            //                                 ),
            //                                 const Expanded(
            //                                     child: Center(
            //                                     child: Text(
            //                                         "Sign UP",
            //                                         style: TextStyle(
            //                                         // fontFamily: 'poppins',
            //                                         fontWeight: FontWeight.w800,
            //                                         color: Color.fromRGBO(59, 79, 125, 1),
            //                                         fontSize: 16,
            //                                         ),
            //                                     ),
            //                                     ),
            //                                 ),
            //                                 SizedBox(
            //                                     height: 20.h,
            //                                     width: 25.w,
            //                                     child: Image.asset("assets/images/Logo_Action.png"),
            //                                 ),
            //                             ]

            //                         )
            //                     ),
            //                     Text(
            //                         "Welcome Back!",
            //                         style: TextStyle(
            //                             fontSize: 32.sp,
            //                             fontWeight: FontWeight.bold,
            //                             color: txtColor
            //                         ),    
            //                     ),
            //                     SizedBox(height: 30.h),
            //                     Text(
            //                         "Log in",
            //                         style: TextStyle(
            //                             fontSize: 16.sp,
            //                             fontWeight: FontWeight.bold,
            //                             color: txtColor
            //                         ),
            //                     ),
            //                     SizedBox(height: 20.h),
            //                     SizedBox(
            //                         // width: 317.w, 
            //                         height: 44.h,
            //                         child: TextField(
            //                             decoration: InputDecoration(
            //                                 hintText: "Name",
            //                                 prefixIcon: Image.asset(
            //                                             "assets/images/login_name_24.png"
            //                                     ),
            //                                 border: OutlineInputBorder(
            //                                     borderSide: BorderSide(
            //                                         width: 1.0 / MediaQuery.of(context).devicePixelRatio,
            //                                         color: Colors.white,
            //                                     )
            //                                 ),
            //                                 enabledBorder: OutlineInputBorder(
            //                                     borderSide: BorderSide(
            //                                         color: Colors.white,
            //                                         width: 1.0 / MediaQuery.of(context).devicePixelRatio,
            //                                     ),
            //                                     borderRadius: BorderRadius.circular(10.0.sp)
            //                                 ),       
            //                                 focusedBorder: OutlineInputBorder(
            //                                     borderSide: BorderSide(
            //                                         width: 1.0 / MediaQuery.of(context).devicePixelRatio, 
            //                                         color: Colors.white),
            //                                 ),
            //                                 // errorBorder: OutlineInputBorder( //<-- SEE HERE
            //                                 //     borderSide: BorderSide(
            //                                 //         width: 1.0 , color: Colors.redAccent), 
            //                                 //     ),   
            //                                 contentPadding: EdgeInsets.symmetric(vertical: 10.h ,  horizontal: 20.h),                      
                                                                                   
            //                             ),
            //                             style: TextStyle(fontSize: 13.sp),
            //                         ),
            //                     ),
            //                     SizedBox(height: 8.h),
            //                     SizedBox(
            //                         // width: 317, 
            //                         height: 44.h,
            //                         child: TextField(
            //                             decoration: InputDecoration(
            //                                 hintText: "Mobile Number",
            //                                 prefixIcon: Image.asset(
            //                                         'assets/images/login_mobile_24.png'
            //                                     ),
            //                                 border: OutlineInputBorder(
            //                                     borderSide: BorderSide(
            //                                         width: 1.0 / MediaQuery.of(context).devicePixelRatio,
            //                                         color: Colors.white,
            //                                     )
            //                                 ),
            //                                 enabledBorder: OutlineInputBorder(
            //                                     borderSide: BorderSide(
            //                                         color: Colors.white,
            //                                         width: 1.0 / MediaQuery.of(context).devicePixelRatio,
            //                                     ),
            //                                     borderRadius: BorderRadius.circular(10.0.sp)
            //                                 ),    
            //                                 focusedBorder: OutlineInputBorder(
            //                                     borderSide: BorderSide(
            //                                         width: 1.0 / MediaQuery.of(context).devicePixelRatio, 
            //                                         color: Colors.white),
            //                                 ),
            //                                 // border: OutlineInputBorder(
            //                                 //     borderSide: BorderSide(color: Colors.white),
            //                                 // ),
            //                                 contentPadding: EdgeInsets.symmetric(vertical: 10.h ,  horizontal: 20.h),   
            //                             ),
            //                             style: TextStyle(fontSize: 13.sp),
            //                         ),
            //                     ),
            //                     SizedBox(height: 30.h),
            //                     SizedBox(
            //                         // width: MediaQuery.of(context).size.width * 0.6,
            //                         width: 136.w,
            //                         height: 44.h,
            //                         child: ElevatedButton(
            //                             onPressed: (){},
            //                             // child: Text(
            //                             //     'Send OTP',
            //                             //     style: TextStyle(
            //                             //         fontSize: 14.sp,
            //                             //         color: txtColor,     
            //                             //         fontWeight: FontWeight.bold,                           
            //                             //     )
            //                             // ),
            //                             style: ElevatedButton.styleFrom(
            //                                 primary: bkColor,
            //                                 shape: RoundedRectangleBorder(
            //                                     borderRadius: BorderRadius.circular(10.sp)
            //                                 )
            //                             ),

            //                             child: Container(
            //                                 alignment: Alignment.center,                            
            //                                 decoration: BoxDecoration(
            //                                     // borderRadius: BorderRadius.only(
            //                                     //     topLeft: Radius.circular(10.0.sp),
            //                                     //     topRight: Radius.circular(10.0.sp),
            //                                     //     bottomLeft: Radius.circular(10.0.sp),
            //                                     //     bottomRight: Radius.circular(10.0.sp),
            //                                     // ),
            //                                     // gradient: LinearGradient(
            //                                     //     begin: Alignment.topRight,
            //                                     //     end: Alignment.bottomLeft,
            //                                     //     colors: [
            //                                     //         Colors.fromRGBO(94,111,228,1),
            //                                     //         Colors.fromRGBO(126,139,238,1)
            //                                     //     ],
            //                                     // ),
            //                                     boxShadow: [
            //                                         BoxShadow(
            //                                             color:  Color.fromRGBO(111, 140, 176, 0.41),
            //                                             offset: Offset(
            //                                                 4.0.sp,
            //                                                 4.0.sp,
            //                                             ),
            //                                             blurRadius: 20.0.sp,
            //                                             spreadRadius: 0,
            //                                         ), //BoxShadow
            //                                         BoxShadow(
            //                                             color: Colors.white,
            //                                             offset: Offset(-6.sp, -6.sp),
            //                                             blurRadius: 20.0.sp,
            //                                             spreadRadius: 3.0,
            //                                         ), //BoxShadow
            //                                         // BoxShadow(
            //                                         //     color: Color.fromRGBO(114, 142, 171, 0.10),
            //                                         //     offset: Offset(2.sp, 2.sp),
            //                                         //     blurRadius: 4.sp,
            //                                         //     spreadRadius: 0.0,
            //                                         // ), //BoxShadow
            //                                     ],
            //                                     // backgroundColor: bkColor,
            //                                 ),
            //                                 child: Text(
            //                                     "Send OTP",
            //                                     style: TextStyle(
            //                                         fontSize: 14.sp,
            //                                         color: txtColor,     
            //                                         fontWeight: FontWeight.bold,                           
            //                                     )
            //                                 )

            //                             ),


            //                         ),
            //                     ),
            //                     // SizedBox( height: 100.h),
            //                     // SizedBox(
            //                     //     width: 136.w, height: 44.h,
                                    
            //                     //     child: Container(
            //                     //         alignment: Alignment.center,                            
            //                     //         decoration: BoxDecoration(
            //                     //             borderRadius: BorderRadius.only(
            //                     //                 topLeft: Radius.circular(10.0.sp),
            //                     //                 topRight: Radius.circular(10.0.sp),
            //                     //                 bottomLeft: Radius.circular(10.0.sp),
            //                     //                 bottomRight: Radius.circular(10.0.sp),
            //                     //             ),
            //                     //             boxShadow: [
            //                     //                 BoxShadow(
            //                     //                     color:  Color.fromRGBO(111, 140, 176, 0.41),
            //                     //                     offset: Offset(
            //                     //                         4.0.sp,
            //                     //                         4.0.sp,
            //                     //                     ),
            //                     //                     blurRadius: 20.0.sp,
            //                     //                     spreadRadius: 0,
            //                     //                 ), //BoxShadow
            //                     //                 BoxShadow(
            //                     //                     color: Colors.white,
            //                     //                     offset: Offset(-6.sp, -6.sp),
            //                     //                     blurRadius: 20.0.sp,
            //                     //                     spreadRadius: 0.0,
            //                     //                 ), //BoxShadow
            //                     //                 BoxShadow(
            //                     //                     color: Color.fromRGBO(114, 142, 171, 0.10),
            //                     //                     offset: Offset(2.sp, 2.sp),
            //                     //                     blurRadius: 4.sp,
            //                     //                     spreadRadius: 0.0,
            //                     //                 ), //BoxShadow
            //                     //             ],
            //                     //             // backgroundColor: bkColor,
            //                     //         ),
            //                     //         // child: Text(
            //                     //         //     "Send OTP",
            //                     //         //     style: TextStyle(
            //                     //         //         fontSize: 14.sp,
            //                     //         //         color: txtColor,     
            //                     //         //         fontWeight: FontWeight.bold,                           
            //                     //         //     )
            //                     //         // )

            //                     //     )
            //                     // )

            //                     SizedBox( height: 330.h ),
            //                     // SizedBox( height: 353.h ),
            //                     Row(
            //                         mainAxisAlignment: MainAxisAlignment.center,
            //                         children: [
            //                             Text(
            //                                 "Don't you have an account?",
            //                                 style: TextStyle(fontSize: 14.sp, color: txtColor)
            //                             ),
            //                             SizedBox(width: 10.w),
            //                             GestureDetector(
            //                                 onTap: (){},
            //                                 child: Text(
            //                                     "Sign Up",
            //                                     style: TextStyle(
            //                                         fontSize: 14.sp,
            //                                         fontWeight: FontWeight.bold,
            //                                         color: blueColor
            //                                     )
            //                                 )
            //                             )
            //                         ]
            //                     )
            //                 ]
            //             )
            //         )
                    

                    
            //     ]
            // ),
        );
    }
}

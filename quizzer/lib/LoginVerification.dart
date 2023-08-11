import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "Colors.dart";

class LoginVerification extends StatelessWidget{
    const LoginVerification({Key? key}): super(key: key);

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
                    title: Text("Log in",
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
                                    Text('Verification',
                                        style: TextStyle(
                                            fontSize: 32.sp,
                                            fontWeight: FontWeight.bold,
                                            color: txtColor,
                                        )
                                    ),
                                    SizedBox(height: 24.h),
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                            Text(
                                                'Enter verification code',
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: txtColor,
                                                )
                                            ),
                                            SizedBox(height: 24.h),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                    Container(
                                                        margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                        width: 44.h, height: 44.h,
                                                        decoration: BoxDecoration(
                                                            color: txtBoxColor,
                                                            borderRadius:  BorderRadius.only(
                                                                topLeft: Radius.circular(22.sp),
                                                                topRight: Radius.circular(22.sp),
                                                                bottomLeft: Radius.circular(22.sp),
                                                                bottomRight: Radius.circular(22.sp)),
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
                                                        child:  TextField(
                                                            decoration: InputDecoration(
                                                                hintText: "1",
                                                                    // prefixIcon: Image.asset(
                                                                    //         'assets/images/login_name_24.png'
                                                                    // ),
                                                                border: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                        color: Colors.white,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors.white,
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),       
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio, 
                                                                        color: Colors.transparent),
                                                                ),
                                                                // errorBorder: OutlineInputBorder( //<-- SEE HERE
                                                                //     borderSide: BorderSide(
                                                                //         width: 1.0 , color: Colors.redAccent), 
                                                                //     ),   
                                                                contentPadding: EdgeInsets.symmetric(vertical: 12.h ,  horizontal: 18.w),                      
                                                                                                    
                                                            ),
                                                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                                                        ),

                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                        width: 44.h, height: 44.h,
                                                        decoration: BoxDecoration(
                                                            color: txtBoxColor,
                                                            borderRadius:  BorderRadius.only(
                                                                topLeft: Radius.circular(22.sp),
                                                                topRight: Radius.circular(22.sp),
                                                                bottomLeft: Radius.circular(22.sp),
                                                                bottomRight: Radius.circular(22.sp)),
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
                                                        child:  TextField(
                                                            decoration: InputDecoration(
                                                                hintText: "2",
                                                                    // prefixIcon: Image.asset(
                                                                    //         'assets/images/login_name_24.png'
                                                                    // ),
                                                                border: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                        color: Colors.white,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors.white,
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),       
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio, 
                                                                        color: Colors.transparent),
                                                                ),
                                                                // errorBorder: OutlineInputBorder( //<-- SEE HERE
                                                                //     borderSide: BorderSide(
                                                                //         width: 1.0 , color: Colors.redAccent), 
                                                                //     ),   
                                                                contentPadding: EdgeInsets.symmetric(vertical: 12.h ,  horizontal: 18.w),                      
                                                                                                    
                                                            ),
                                                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                                                        ),

                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                        width: 44.h, height: 44.h,
                                                        decoration: BoxDecoration(
                                                            color: txtBoxColor,
                                                            borderRadius:  BorderRadius.only(
                                                                topLeft: Radius.circular(22.sp),
                                                                topRight: Radius.circular(22.sp),
                                                                bottomLeft: Radius.circular(22.sp),
                                                                bottomRight: Radius.circular(22.sp)),
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
                                                        child:  TextField(
                                                            decoration: InputDecoration(
                                                                hintText: "3",
                                                                    // prefixIcon: Image.asset(
                                                                    //         'assets/images/login_name_24.png'
                                                                    // ),
                                                                border: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                        color: Colors.white,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors.white,
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),       
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio, 
                                                                        color: Colors.transparent),
                                                                ),
                                                                // errorBorder: OutlineInputBorder( //<-- SEE HERE
                                                                //     borderSide: BorderSide(
                                                                //         width: 1.0 , color: Colors.redAccent), 
                                                                //     ),   
                                                                contentPadding: EdgeInsets.symmetric(vertical: 12.h ,  horizontal: 18.w),                      
                                                                                                    
                                                            ),
                                                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                                                        ),

                                                    ),
                                                    Container(
                                                        margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                        width: 44.h, height: 44.h,
                                                        decoration: BoxDecoration(
                                                            color: txtBoxColor,
                                                            borderRadius:  BorderRadius.only(
                                                                topLeft: Radius.circular(22.sp),
                                                                topRight: Radius.circular(22.sp),
                                                                bottomLeft: Radius.circular(22.sp),
                                                                bottomRight: Radius.circular(22.sp)),
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
                                                        child:  TextField(
                                                            decoration: InputDecoration(
                                                                hintText: "4",
                                                                    // prefixIcon: Image.asset(
                                                                    //         'assets/images/login_name_24.png'
                                                                    // ),
                                                                border: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                        color: Colors.white,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),
                                                                enabledBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        color: Colors.white,
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(22.0.sp)
                                                                ),       
                                                                focusedBorder: OutlineInputBorder(
                                                                    borderSide: BorderSide(
                                                                        width: 1.0 / MediaQuery.of(context).devicePixelRatio, 
                                                                        color: Colors.transparent),
                                                                ),
                                                                // errorBorder: OutlineInputBorder( //<-- SEE HERE
                                                                //     borderSide: BorderSide(
                                                                //         width: 1.0 , color: Colors.redAccent), 
                                                                //     ),   
                                                                contentPadding: EdgeInsets.symmetric(vertical: 12.h ,  horizontal: 18.w),                      
                                                                                                    
                                                            ),
                                                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                                                        ),

                                                    ),
                                                ]
                                            ),
                                            SizedBox(
                                                height: 24.h
                                            ),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                    Text("If you didn't receive a code!",
                                                        style: TextStyle(fontSize: 12.sp, color:txtColor),
                                                    ),
                                                    SizedBox(width: 10.w),
                                                    GestureDetector(
                                                        onTap: (){},
                                                        child: Text(
                                                            "Resend",
                                                            style: TextStyle(
                                                                fontSize: 12.sp,
                                                                fontWeight: FontWeight.bold,
                                                                color: blueColor
                                                            )
                                                        )
                                                    ),
                                                ],
                                            ),
                                            SizedBox(height: 58.h),
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
                                                            print("You pressed Elevated Button");
                                                        }, 
                                                        // child: Padding(
                                                        //     padding:EdgeInsets.only(
                                                        //         top: 18,
                                                        //         bottom: 18,
                                                        //     ),
                                                            child:Text("Verify", style:TextStyle(
                                                                fontSize: 14.sp,
                                                                fontWeight: FontWeight.bold,
                                                            )),
                                                        // )
                                                    )  
                                                ),

                                            ),
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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "Colors.dart";

class Signup extends StatelessWidget{
    const Signup({Key? key}): super(key: key);

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
                    title: Text("Sign UP",
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
                                    Text('Create an account',
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
                                                'Sign Up',
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: txtColor,
                                                    fontWeight: FontWeight.bold,
                                                )
                                            ),
                                            SizedBox(height: 24.h),
                                            Container(
                                               // margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                height: 44.h,
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
                                                child:  TextField(
                                                    
                                                    decoration: InputDecoration(
                                                        hintText: "Name",
                                                            prefixIcon: Image.asset(
                                                                    'assets/images/Profile.png'
                                                            ),
                                                        border: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                color: Colors.white,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.white,
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
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
                                                    style: TextStyle(fontSize: 14.sp),
                                                ),

                                            ),
                                            SizedBox(height: 10.h),
                                            Container(
                                               // margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                height: 44.h,
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
                                                child:  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: "Last Name",
                                                            prefixIcon: Image.asset(
                                                                    'assets/images/Profile.png'
                                                            ),
                                                        border: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                color: Colors.white,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.white,
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
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
                                                    style: TextStyle(fontSize: 14.sp),
                                                ),

                                            ),
                                            SizedBox(height: 10.h),
                                            Container(
                                                //margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                height: 44.h,
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
                                                child:  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: "Age",
                                                            prefixIcon: Image.asset(
                                                                    'assets/images/Profile.png'
                                                            ),
                                                        border: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                color: Colors.white,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.white,
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
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
                                                    style: TextStyle(fontSize: 14.sp),
                                                ),

                                            ),
                                            SizedBox(height: 10.h),
                                            Container(
                                              //  margin: EdgeInsets.only(left:10.w, right: 10.w),
                                                height: 44.h,
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
                                                child:  TextField(
                                                    decoration: InputDecoration(
                                                        hintText: "Mobile Number",
                                                            prefixIcon: Padding(
                                                                padding:  EdgeInsetsDirectional.only(top: 10.h),
                                                                child: Image.asset(
                                                                    'assets/images/Lock.png'
                                                                )
                                                            ),
                                                        border: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                                color: Colors.white,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.white,
                                                                width: 1.0 / MediaQuery.of(context).devicePixelRatio,
                                                            ),
                                                            borderRadius: BorderRadius.circular(10.0.sp)
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
                                                    style: TextStyle(fontSize: 14.sp),
                                                ),

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
                                                            print("You pressed Sign up Button");
                                                        }, 
                                                        // child: Padding(
                                                        //     padding:EdgeInsets.only(
                                                        //         top: 18,
                                                        //         bottom: 18,
                                                        //     ),
                                                            child:Text("Send OTP", style:TextStyle(
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
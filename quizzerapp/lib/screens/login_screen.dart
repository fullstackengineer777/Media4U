import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/screens/signup_screen.dart';
import 'package:quizzerapp/screens/login_verify.dart';

class LoginScreen extends StatefulWidget{
    const LoginScreen({super.key});

    @override
    State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: bkDecoration,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                                CustomAppBar(title: LOG_IN),
                                SizedBox(height: 41.h),
                                Text(WELCOME_BACK, style: Head1),
                                SizedBox(height: 30.h),
                                Center(
                                    child: Text( LOG_IN, style: Head4),
                                ),
                                SizedBox(height: 25.h,),
                                TextInputWidget(
                                    hintText: "Name",
                                    icon: "assets/images/profile.png",
                                ),
                                SizedBox(height: 10.h),
                                TextInputWidget(
                                    hintText: "Mobile Number",
                                    icon: "assets/images/lock.png",
                                ),
                                SizedBox(height: 40.h),
                                SubmitButton(
                                    title: "Send OTP",
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) => LoginVerify(),
                                            ));
                                    },
                                ),
                                // SizedBox(height: 353.h),
                                SizedBox(height: 100.h),
                                Center(
                                    child:
                                        Row(
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center ,
                                            children:[
                                                    Text("Don’t have an account?", style: P14),
                                                    SizedBox(width: 10.w),
                                                    GestureDetector(
                                                        onTap: (){
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        SignupScreen(),
                                                                )
                                                            );
                                                        },
                                                        child: Text(SIGN_UP, style: P14_BLUE)
                                                    )
                                            ]
                                        )
                                ),
                                Spacer(),
                        ]
                    )
                )
            )
        );
    }
}
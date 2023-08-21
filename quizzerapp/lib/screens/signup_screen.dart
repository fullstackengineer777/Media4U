import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/text_input_widget.dart';

class SignupScreen extends StatefulWidget{
    const SignupScreen({super.key});

    @override
    State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{

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
                        children:[
                                CustomAppBar(title: SIGN_UP),
                                SizedBox(height: 41.h),
                                Text("Create An Account", style: Head1),
                                SizedBox(height: 30.h),
                                Center(
                                    child: Text( SIGN_UP, style: Head4),
                                ),
                                SizedBox(height: 25.h,),
                                TextInputWidget(
                                    hintText: "Name",
                                    icon: "assets/images/profile.png",
                                ),
                                SizedBox(height: 10.h),
                                TextInputWidget(
                                    hintText: "Last Name",
                                    icon: "assets/images/profile.png",
                                ),
                                SizedBox(height: 10.h),
                                TextInputWidget(
                                    hintText: "Age",
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
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //     builder: (context) => VerifyScreen(),
                                        //     ));
                                    },
                                ),
                                Spacer(),
                        ]
                    )
                )
            )
        );
    }
}
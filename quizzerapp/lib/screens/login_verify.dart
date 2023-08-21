import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/signup_screen.dart';
import 'package:quizzerapp/screens/start_game.dart';
import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/text_verify_widget.dart';

class LoginVerify extends StatefulWidget{
    const LoginVerify({super.key});

    @override
    State<LoginVerify> createState() => _LoginVerifyState();
}

class _LoginVerifyState extends State<LoginVerify>{

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
                                Text(VERIFICATION, style: Head1),
                                SizedBox(height: 30.h),
                                Center(
                                    child: Text( ENTER_VERIFY_CODE, style: Head4),
                                ),
                                SizedBox(height: 25.h,),
                                Center(
                                    child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center ,
                                            children: [
                                                TextVerifyWidget(),
                                                SizedBox(width: 10.w),
                                                TextVerifyWidget(),
                                                SizedBox(width: 10.w),
                                                TextVerifyWidget(),
                                                SizedBox(width: 10.w),
                                                TextVerifyWidget(),
                                            ]

                                        )
                                ),
                                SizedBox(height: 30.h),
                                Center(
                                    child:
                                        Row(
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center ,
                                            children:[
                                                    Text("If you didn’t receive a code !", style: P14),
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
                                                        child: Text(RESEND, style: P14_BLUE)
                                                    )
                                            ]
                                        )
                                ),
                                SizedBox(height: 40.h),
                                SubmitButton(
                                    title: VERIFY,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) => StartGame(),
                                            ));
                                    },
                                ),
                                // SizedBox(height: 353.h),
                                SizedBox(height: 100.h),
                                Spacer(),
                        ]
                    )
                )
            )
        );
    }
}
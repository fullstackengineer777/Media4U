import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/profile_photos.dart';

class Profile extends StatefulWidget{
    const Profile({super.key});

    @override
    State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

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
                                CustomAppBar(title: PROFILE),
                                SizedBox(height: 41.h),
                                Center(
                                    child: new Stack(
                                            children: <Widget>[  
                                                Container(
                                                    width: 130.w,
                                                    height: 130.h,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(image: AssetImage('assets/images/profile_anna.png'), fit: BoxFit.fill),
                                                    )
                                                ),
                                                new Positioned(
                                                    top: 105.h,
                                                    left: 106.w,
                                                    child: Container(
                                                        width: 20.w, height: 20.h,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(image: AssetImage('assets/images/edit.png'), fit: BoxFit.fill),
                                                            
                                                        )
                                                    )
                                                )
                                            ]
                                    ),
                                ),
                                SizedBox(height: 30.h),
                                TextInputWidget(
                                    hintText: "First Name",
                                    icon: "assets/images/profile.png",
                                ),
                                SizedBox(height: 10.h),
                                TextInputWidget(
                                    hintText: "Last Name",
                                    icon: "assets/images/profile.png",
                                ),
                                SizedBox(height: 10.h),
                                TextInputWidget(
                                    hintText: "Email",
                                    icon: "assets/images/email.png",
                                ),
                                SizedBox(height: 10.h),
                                TextInputWidget(
                                    hintText: "Mobile Number",
                                    icon: "assets/images/lock.png",
                                ),
                                SizedBox(height: 40.h),
                                ProfilePhotos(),
                                Spacer(),
                        ]
                    )
                )
            )
        );
    }
}
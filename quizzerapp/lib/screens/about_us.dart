import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/searchbox.dart';
import 'package:quizzerapp/widgets/searchitem.dart';

class AboutUs extends StatefulWidget{
    const AboutUs({super.key});

    @override
    State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs>{

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
                                CustomAppBar(title: ABOUT_US),
                                SizedBox(height: 41.h),
                                Text("Welcome to Quizzer", style: Head7),
                                SizedBox(height: 10.h),
                                Text("Lorem Ipsum is simply dummy text of the printing and  type setting industry. Lorem Ipsum has been the industry's  text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                    style: P10),
                                SizedBox(height: 20.h),
                                Text("It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                                    style: P10)
                                
                        ]
                    )
                )
            )
        );
    }
}
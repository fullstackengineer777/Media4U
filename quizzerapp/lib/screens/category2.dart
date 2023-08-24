import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/category3.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/question_button.dart';
import 'package:quizzerapp/widgets/question_box.dart';


class Category2Screen extends StatefulWidget{
    const Category2Screen({super.key});

    @override
    State<Category2Screen> createState() => _Category2ScreenState();
}

class _Category2ScreenState extends State<Category2Screen>{

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
                                CustomAppBar(title: CATEGORY2),
                                SizedBox(height: 40.h),
                                QuestionWidget(
                                    question: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout?"
                                ),
                                SizedBox(height: 59.h),
                                // QuestionButton(),
                                QuestionButton(title: "Lorem Ipsum", height: 44.h),
                                SizedBox(height: 16.h),
                                QuestionButton(title: "Lorem Ipsum", height: 44.h),
                                SizedBox(height: 16.h),
                                QuestionButton(title: "Lorem Ipsum", height: 44.h),
                                SizedBox(height: 16.h),
                                QuestionButton(title: "Lorem Ipsum", height: 44.h),
                                SizedBox(height: 40.h),
                              
                                SubmitButton(
                                    title: NEXT,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) => Category3Screen(),
                                            ));
                                    },
                                ),
                        ]
                    )
                )
            )
        );
    }
}
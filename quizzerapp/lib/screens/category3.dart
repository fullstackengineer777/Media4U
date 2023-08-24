import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/category4.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/question_button1.dart';
import 'package:quizzerapp/widgets/question_box.dart';


class Category3Screen extends StatefulWidget{
    const Category3Screen({super.key});

    @override
    State<Category3Screen> createState() => _Category3ScreenState();
}

class _Category3ScreenState extends State<Category3Screen>{

    String? selected = "Yes";
    void onChanged(String? value){
        setState(() {
            selected = value;
        });
    }

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
                                CustomAppBar(title: CATEGORY3),
                                SizedBox(height: 40.h),
                                QuestionWidget(
                                    question: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout?"
                                ),
                                SizedBox(height: 59.h),
                                // QuestionButton(),
                                QuestionButton1(title: "Yes", selected: selected , height: 44.h, onChanged: onChanged),
                                SizedBox(height: 16.h),
                                QuestionButton1(title: "No", selected: selected , height: 44.h, onChanged: onChanged),
                                SizedBox(height: 16.h),
                                // QuestionButton(title: "Lorem Ipsum", height: 44.h),
                                // SizedBox(height: 16.h),
                                // QuestionButton(title: "Lorem Ipsum", height: 44.h),
                                // SizedBox(height: 40.h),
                              
                                SubmitButton(
                                    title: NEXT,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) => Category4Screen(),
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
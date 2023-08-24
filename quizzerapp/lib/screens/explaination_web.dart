import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/story_window.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/question_button.dart';
import 'package:quizzerapp/widgets/question_box.dart';
import 'package:quizzerapp/widgets/explain_text_web.dart';


class WebExplaination extends StatefulWidget{
    const WebExplaination({super.key});

    @override
    State<WebExplaination> createState() => _WebExplainationState();
}

class _WebExplainationState extends State<WebExplaination>{

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
                                CustomAppBar(title: WEB_EXPLANATION),
                                SizedBox(height: 40.h),
                                QuestionWidget(
                                    question: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout?"
                                ),
                                SizedBox(height: 59.h),
                                ExplainTextWeb(explaination: "https://unsplash.com/photos/hpTH5b6mo2s"),
                                SizedBox(height: 134.h),
                                SubmitButton(
                                    title: BACK,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) => StoryWindow(),
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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/game_window.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';
import 'package:quizzerapp/widgets/question_button.dart';
import 'package:quizzerapp/widgets/question_box.dart';
import 'package:quizzerapp/widgets/explain_text.dart';


class StoryWindow extends StatefulWidget{
    const StoryWindow({super.key});

    @override
    State<StoryWindow> createState() => _StoryWindowState();
}

class _StoryWindowState extends State<StoryWindow>{

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
                                CustomAppBar(title: STORY_WINDOW),
                                SizedBox(height: 40.h),
                                Text(STORY, style: P14),
                                SizedBox(height: 7.h),
                                ExplainText (
                                    height: 235.h,
                                    explaination: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long fact that a reader will be distracted by the readable of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long fact that a reader will be distracted by the readable of a page when looking at its layout?"
                                ),
                                SizedBox(height: 13.h),
                                Text(QUESTION, style: P14),
                                SizedBox(height: 7.h),
                                ExplainText (
                                    height: 120.h,
                                    explaination: "Rreader will be distracted by the readable of a page when looking at its layout?"
                                ),
                                SizedBox(height: 134.h),
                                SubmitButton(
                                    title: NEXT,
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => GameWindow(),
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
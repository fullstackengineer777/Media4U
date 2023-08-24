import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/searchbox.dart';
import 'package:quizzerapp/widgets/team_manage.dart';
import 'package:quizzerapp/widgets/team_group.dart';
import 'package:quizzerapp/widgets/game_type.dart';
import 'package:quizzerapp/widgets/enter_player_name.dart';


class NewGame extends StatefulWidget{
    const NewGame({super.key});

    @override
    State<NewGame> createState() => _NewGameState();
}

class _NewGameState extends State<NewGame>{
    bool checked = true;
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: bkDecoration,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: ListView(
                        children: <Widget>[
                            Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                                CustomAppBar(title: NEW_GAME),
                                                SizedBox(height: 41.h),
                                                SearchBox(
                                                    hintText: "Please Enter Game Title",
                                                ),
                                                SizedBox(height: 10.h),
                                                GameType(height: 41.h),
                                                SizedBox(height: 10.h),
                                                Row(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start ,
                                                    children:[
                                                        Checkbox(
                                                            value: checked,
                                                            // borderColor: Color.fromRGBO()
                                                            onChanged: (value){
                                                                setState((){
                                                                    checked = !checked;
                                                                });
                                                            },
                                                        ),
                                                        Text('Are you 18 or above?', style: P14)
                                                    ]
                                                ),
                                                SizedBox(height: 20.h),
                                                EnterPlayerName(),
                                                SizedBox(height: 10.h),
                                                TeamManage(),
                                                SizedBox(height: 10.h),
                                                TeamGroup(),
                                                SizedBox(height: 52.h),
                                                SubmitButton(title: NEXT),
                                                SizedBox(height: 52.h)
                                                
                                        ]
                                    ),
                                    // Column(
                                    //     children: [
                                            
                                    //     ]
                                    // )
                                ]
                            )
                        ]
                    )
                )
            )
        );
    }
}
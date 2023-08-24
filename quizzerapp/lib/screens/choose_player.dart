import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/searchbox.dart';
import 'package:quizzerapp/widgets/choose_player_item.dart';

class ChoosePlayer extends StatefulWidget{
    const ChoosePlayer({super.key});

    @override
    State<ChoosePlayer> createState() => _ChoosePlayerState();
}

class _ChoosePlayerState extends State<ChoosePlayer>{

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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                        CustomAppBar(title: CHOOSE_PLAYERS),
                                        SizedBox(height: 41.h),
                                        SearchBox(
                                            hintText: "Search Name",
                                            icon: "assets/images/search.png",
                                        ),
                                        SizedBox(height: 10.h),
                                        ChoosePlayerItem(name: "Alicia", icon: "assets/images/alisia.png", invited: false),
                                        ChoosePlayerItem(name: "Brain", icon: "assets/images/brain.png", invited: false),
                                        ChoosePlayerItem(name: "Diana", icon: "assets/images/diana.png", invited: true),
                                        ChoosePlayerItem(name: "Brian", icon: "assets/images/brian.png", invited: true),
                                        
                                ]
                            ),
                            Column(
                                children: [
                                    SubmitButton(title: "Resume"),
                                    SizedBox(height: 52.h)
                                ]
                            )
                        ]
                    )
                )
            )
        );
    }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/new_game.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
// import 'package:quizzerapp/widgets/unfinished_game_item.dart';
import 'package:quizzerapp/widgets/new_game_item.dart';
import 'package:quizzerapp/widgets/navigation_bar.dart';

class SelectNewGames extends StatefulWidget{
    const SelectNewGames({super.key});

    @override
    State<SelectNewGames> createState() => _SelectNewGamesState();
}

class _SelectNewGamesState extends State<SelectNewGames>{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: bkDecoration,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18.w),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                        CustomAppBar(title: SELECT_GAME),
                                        SizedBox(height: 41.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                InkWell(
                                                    onTap: (){
                                                            Navigator.pushReplacement(
                                                                context,
                                                                MaterialPageRoute(
                                                                builder: (context) => const NewGame(),
                                                            ));
                                                    },
                                                    child: NewGameItem(
                                                        title: "Game 1",
                                                        url: "assets/images/new_game1.png",
                                                        tit_width: 144.w, tit_top: 133.h, height: 172.h, tit_height: 39.h,
                                                    ),                                                    
                                                ),
                                                NewGameItem(
                                                    title: "Game 2",
                                                    url: "assets/images/new_game1.png",
                                                    tit_width: 144.w, tit_top: 133.h, height: 172.h, tit_height: 39.h,
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                NewGameItem(
                                                    title: "Game 3",
                                                    url: "assets/images/new_game1.png",
                                                    tit_width: 144.w, tit_top: 133.h, height: 172.h, tit_height: 39.h,
                                                ),
                                                NewGameItem(
                                                    title: "Game 4",
                                                    url: "assets/images/new_game1.png",
                                                    tit_width: 144.w, tit_top: 133.h, height: 172.h, tit_height: 39.h,
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                NewGameItem(
                                                    title: "Game 5",
                                                    url: "assets/images/new_game1.png", 
                                                    tit_width: 144.w, tit_top: 133.h, height: 172.h, tit_height: 39.h,
                                                ),
                                                NewGameItem(
                                                    title: "Game 6",
                                                    url: "assets/images/new_game1.png", 
                                                    tit_width: 144.w, tit_top: 133.h, height: 172.h, tit_height: 39.h,
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 10.h),
                                    
                                ]
                            )
                        ),
                        CustomNavigationBar(),
                    ]
                )
            )
        );
    }
}
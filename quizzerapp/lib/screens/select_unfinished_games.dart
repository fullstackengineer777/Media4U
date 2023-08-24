import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/category1.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/unfinished_game_item.dart';
// import 'package:quizzerapp/widgets/new_game_item.dart';
import 'package:quizzerapp/widgets/navigation_bar.dart';

class SelectUnfinishedGames extends StatefulWidget{
    const SelectUnfinishedGames({super.key});

    @override
    State<SelectUnfinishedGames> createState() => _SelectUnfinishedGamesState();
}

class _SelectUnfinishedGamesState extends State<SelectUnfinishedGames>{

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
                                                                builder: (context) => const Category1Screen(),
                                                            ));
                                                    },
                                                    child:  UnfinishedGameItem(
                                                        title: "Game 1",
                                                        gameItems: ["Alltag/Haushalt", "Scherz"],
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: (){
                                                            Navigator.pushReplacement(
                                                                context,
                                                                MaterialPageRoute(
                                                                builder: (context) => const Category1Screen(),
                                                            ));
                                                    },
                                                    child:  UnfinishedGameItem(
                                                        title: "Game 2",
                                                        gameItems: ["Alltag/Haushalt", "Scherz"],
                                                    ),
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                UnfinishedGameItem(
                                                    title: "Game 3",
                                                    gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                                UnfinishedGameItem(
                                                title: "Game 4",
                                                gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                UnfinishedGameItem(
                                                    title: "Game 5",
                                                    gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                                UnfinishedGameItem(
                                                title: "Game 6",
                                                gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                UnfinishedGameItem(
                                                    title: "Game 7",
                                                    gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                            ],
                                        ),
                                    
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
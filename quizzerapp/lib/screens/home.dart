import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/select_unfinished_games.dart';
import 'package:quizzerapp/screens/select_new_games.dart';



import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/invite.dart';
import 'package:quizzerapp/widgets/unfinished_game_item.dart';
import 'package:quizzerapp/widgets/new_game_item.dart';
import 'package:quizzerapp/widgets/navigation_bar.dart';


class HomeScreen extends StatefulWidget{
    const HomeScreen({super.key});

    @override
    State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

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
                                        CustomAppBar(title: HOME),
                                        SizedBox(height: 41.h),
                                        Invite(),
                                        SizedBox(height: 32.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                Text( UNFINISHED_GAMES, style: Head4 ),
                                                GestureDetector(
                                                    onTap: () {
                                                        Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                            builder: (context) => const SelectUnfinishedGames(),
                                                            ));
                                                    },
                                                    child: Row(
                                                        children: [
                                                            Text( VIEW_ALL, style: P10 ),
                                                            const SizedBox(width: 1),
                                                            Image.asset("assets/images/arrow_right.png"),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 20.h),
                                        CarouselSlider(
                                            options: CarouselOptions(
                                                height: 90.h,
                                                initialPage: 0,

                                                viewportFraction:
                                                    0.5, // Adjust the fraction of the viewport that each item occupies
                                                enableInfiniteScroll:
                                                    true, // Set to false if you don't want infinite scrolling
                                                reverse:
                                                    false, // Set to true if you want the items to be displayed in reverse order
                                                autoPlay: false, // Set to true for auto-play
                                                autoPlayInterval: Duration(
                                                    seconds: 3), // Adjust the auto-play interval
                                                autoPlayAnimationDuration: Duration(
                                                    milliseconds:
                                                        800), // Adjust the animation duration
                                                autoPlayCurve: Curves
                                                    .fastOutSlowIn, // Adjust the animation curve
                                            ),
                                            items: [
                                                UnfinishedGameItem(
                                                title: "Game 1",
                                                gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                                UnfinishedGameItem(
                                                title: "Game 2",
                                                gameItems: ["Alltag/Haushalt", "Scherz"],
                                                ),
                                                // Add more items as needed
                                            ].map<Widget>((item) {
                                                return Builder(
                                                    builder: (BuildContext context) {
                                                        return Container(
                                                            width: MediaQuery.of(context).size.width,
                                                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                            child: item,
                                                        );
                                                    },
                                                );
                                            }).toList(),
                                        ),
                                        // UnfinishedGameItem(title: "Game1", gameItems: ["Alltag/Haushalt", "Scherz"]),
                                        SizedBox(height: 32.h),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                                Text( NEW_GAME, style: Head4 ),
                                                GestureDetector(
                                                    onTap: () {
                                                        Navigator.pushReplacement(
                                                            context,
                                                            MaterialPageRoute(
                                                            builder: (context) => const SelectNewGames(),
                                                            ));
                                                    },
                                                    child: Row(
                                                        children: [
                                                            Text( VIEW_ALL, style: P10 ),
                                                            const SizedBox(width: 1),
                                                            Image.asset("assets/images/arrow_right.png"),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                        SizedBox(height: 20.h),
                                        CarouselSlider(
                                            options: CarouselOptions(
                                                height: 142.h,
                                                initialPage: 0,

                                                viewportFraction:
                                                    0.4, // Adjust the fraction of the viewport that each item occupies
                                                enableInfiniteScroll:
                                                    true, // Set to false if you don't want infinite scrolling
                                                reverse:
                                                    false, // Set to true if you want the items to be displayed in reverse order
                                                autoPlay: false, // Set to true for auto-play
                                                autoPlayInterval: Duration(
                                                    seconds: 3), // Adjust the auto-play interval
                                                autoPlayAnimationDuration: Duration(
                                                    milliseconds:
                                                        800), // Adjust the animation duration
                                                autoPlayCurve: Curves
                                                    .fastOutSlowIn, // Adjust the animation curve
                                            ),
                                            items: [
                                                NewGameItem(
                                                    title: "Game 1",
                                                    url: "assets/images/new_game1.png",
                                                ),
                                                NewGameItem(
                                                    title: "Game 2",
                                                    url: "assets/images/new_game1.png",
                                                ),
                                                // Add more items as needed
                                            ].map<Widget>((item) {
                                                return Builder(
                                                    builder: (BuildContext context) {
                                                        return Container(
                                                            width: MediaQuery.of(context).size.width,
                                                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                            child: item,
                                                        );
                                                    },
                                                );
                                            }).toList(),
                                        ),
                                    
                                        SizedBox(height: 9.h),
                                    
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
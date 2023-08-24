import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/submit_button.dart';
import 'package:quizzerapp/widgets/searchbox.dart';
import 'package:quizzerapp/widgets/searchitem.dart';

class InviteFriend extends StatefulWidget{
    const InviteFriend({super.key});

    @override
    State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend>{

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
                                CustomAppBar(title: INVITE_FRIEND),
                                SizedBox(height: 41.h),
                                SearchBox(
                                    hintText: "Search Name",
                                    icon: "assets/images/search.png",
                                ),
                                SizedBox(height: 10.h),
                                SearchItem(name: "Alicia", icon: "assets/images/alisia.png", invited: false),
                                SearchItem(name: "Brain", icon: "assets/images/brain.png", invited: false),
                                SearchItem(name: "Diana", icon: "assets/images/diana.png", invited: true),
                                SearchItem(name: "Brian", icon: "assets/images/brian.png", invited: true),
                                
                        ]
                    )
                )
            )
        );
    }
}
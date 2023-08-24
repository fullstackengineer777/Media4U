import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:flexible_scrollbar/flexible_scrollbar.dart';

import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/widgets/submit_button.dart';

class TeamManageItem extends StatefulWidget {
  TeamManageItem({super.key, required this.icon, required this.name, this.width});

  String name;
  String icon;
  double? width;
  @override
  State<TeamManageItem> createState() => _TeamManageItemState();
}

class _TeamManageItemState extends State<TeamManageItem> {
  final ScrollController scrollController = ScrollController();
  BarPosition barPosition = BarPosition.end;
  Axis scrollDirection = Axis.vertical;
  final double thumbWidth = 5.sp;
  final double thumbDragWidth = 10.sp;
  final animationDuration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Container(    
        width: widget.width, height: 26.h,
        child: Row(
            children: [
                SizedBox( width: 20.w ),
                Container(
                    width: 24.w, height: 24.h,
                    decoration: BoxDecoration(                        
                        image: DecorationImage(image: AssetImage(widget.icon ?? 'assets/images/profile.png'), fit: BoxFit.fill),
                    )
                ),
                SizedBox( width: 10.w ),
                Text(
                    widget.name,
                    style: P14,
                ),
                SizedBox( width: 30.w ),
                Container(
                    width: 26.w, height: 26.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/remove_player.png'), fit: BoxFit.fill),
                    )
                ),
            ]
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:quizzerapp/constants/strings.dart';

class UnfinishedGameItem  extends StatelessWidget {

  final String? title;
  final List<String>? gameItems;
  UnfinishedGameItem({Key? key, this.title, this.gameItems}):super(key:key);

  @override
  Widget build(BuildContext context) {

    return Container(
        width: 149.w,
        height: 88.h,
        decoration: BoxDecoration(
                // image: DecorationImage(image: AssetImage("assets/images/invitebk.png"), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20.sp),
                // border: Border.all(color: Color.fromRGBO(0, 227, 243, 1), width: 3),
                gradient: LinearGradient(
                    begin: Alignment(-0.8, -2),
                    end: Alignment(0.8, 2),
                    colors:[
                        Color.fromRGBO(81,99,224,1),
                        Color.fromRGBO(136,147,240,1)
                    ]
                )
        ),
        child: Padding(
                // padding: EdgeInsets.all(0.h),
                padding: EdgeInsets.only(left: 16.w, top: 10.h, right: 18.w, bottom: 5.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(title ?? 'Game 1', style: Head4_WHITE),
                        SizedBox(height: 5.h),
                        Row(
                            children: [
                                Icon( 
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 5.w,
                                ),
                                SizedBox(width: 10.w), // Adjust spacing as needed
                                Text(
                                    gameItems![0], style: P14_WHITE
                                ),
                            ]
                        ),
                        Row(
                            children: [
                                Icon( 
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 5.w,
                                ),
                                SizedBox(width: 10.w), // Adjust spacing as needed
                                Text(
                                    gameItems![1], style: P14_WHITE
                                ),
                            ]
                        ),

                        // ListView.builder(
                        //     shrinkWrap: true,
                        //     itemCount: gameItems?.length ?? 0,               
                        //     itemBuilder: (context, index) {
                        //         return Padding(
                        //             padding: const EdgeInsets.only(bottom: 3),
                        //             child: Row(
                        //                     children: [
                        //                         Icon( 
                        //                             Icons.circle,
                        //                             color: Colors.white,
                        //                             size: 5.w,
                        //                         ),
                        //                         SizedBox(width: 10.w), // Adjust spacing as needed
                        //                         Text(
                        //                             gameItems![index], style: P14_WHITE
                        //                         ),
                        //                     ]
                        //             )
                        //         );
                        //     }
                    
                        // )
                    ]
                )
            ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

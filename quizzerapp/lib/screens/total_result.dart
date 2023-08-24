import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/colors.dart';
import 'package:quizzerapp/constants/strings.dart';
import 'package:quizzerapp/constants/fonts.dart';

import 'package:quizzerapp/screens/winner.dart';

import 'package:quizzerapp/widgets/custom_appbar.dart';
import 'package:quizzerapp/widgets/total_btn.dart';
// import 'package:quizzerapp/widgets/text_input_widget.dart';


class TotalResult extends StatefulWidget{
    const TotalResult({super.key});

    @override
    State<TotalResult> createState() => _TotalResultState();
}

class _TotalResultState extends State<TotalResult>{

    
    navigateToWinner() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Winner(),
            ));
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // decoration: bkDecoration,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                                CustomAppBar(title: TOTAL_RESULT),
                                SizedBox(height: 40.h),
                                SizedBox(height: 40.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Container(width: 80.w, height: 44.h),
                                        TotalButton(width: 60.w, height: 44.h, title: "Game", fillColor: Color.fromRGBO(227,237,247,1)),
                                        TotalButton(width: 60.w, height: 44.h, title: "Won", fillColor: Color.fromRGBO(227,237,247,1)),
                                        TotalButton(width: 60.w, height: 44.h, title: "Points", fillColor: Color.fromRGBO(227,237,247,1)),                                        
                                    ]
                                ),
                                SizedBox(height: 20.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        TotalButton(width: 80.w, height: 44.h, title: "Player1", fillColor: Color.fromRGBO(227,237,247,1)),
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                    ]
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        TotalButton(width: 80.w, height: 44.h, title: "Player2", fillColor: Color.fromRGBO(227,237,247,1)),
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                    ]
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        TotalButton(width: 80.w, height: 44.h, title: "Player3", fillColor: Color.fromRGBO(227,237,247,1)),
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                    ]
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        TotalButton(width: 80.w, height: 44.h, title: "Player4", fillColor: Color.fromRGBO(227,237,247,1)),
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                        Container(width: 60.w, height: 44.h , 
                                            child: Center(child: Text("3", style: P12_gray)),
                                        ),                                    
                                    ]
                                ),
                                SizedBox(height: 10.h),
                                SizedBox(height: 40.h),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        TotalButton(width: 136.w, height: 44.h, title: "New", fillColor: Color.fromRGBO(227,237,247,1)),
                                        TotalButton(width: 136.w, height: 44.h, title: "Finish", fillColor: Color.fromRGBO(227,237,247,1), 
                                            onTap: navigateToWinner),                                        
                                    ]
                                ),
                        ]
                    )
                )
            )
        );
    }
}
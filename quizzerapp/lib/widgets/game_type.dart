import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzerapp/constants/fonts.dart';

class GameType extends StatefulWidget{

    // final String title;
    final double? width;
    final double? height;

    GameType({super.key, required this.height,  this.width});
    // GameType({Key? key}): super(key: key);

    @override
    State<GameType> createState() => _GameTypeState();
}

class _GameTypeState extends State<GameType>{
    
    // Initial Selected Value
    String dropdownvalue = 'Type of Game';   
    
    // List of items in our dropdown menu
    var items = [    
        'Type of Game',
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
    ];

    @override
    Widget build(BuildContext context){
        return Center(
            // width: width,
            child: InkWell(
                onTap: (){},
                child: Container(
                    height: widget.height,
                    width: widget.width ?? MediaQuery.of(context).size.width,
                    // child: Text(widget.title)
                    decoration: BoxDecoration(
                        // color: Color.fromRGBO(0, 0, 224, 1),
                        // borderRadius: BorderRadius.circular(10.sp),
                        // border: Border.all(color: Color.fromRGBO(214, 227, 243, 1), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment(1,0),
                            end: Alignment(-1,0),
                            colors: [
                                Color.fromRGBO(231,238,255,1),
                                Color.fromRGBO(224,234,255,1)
                            ]
                        ),
                        boxShadow: [
                            BoxShadow(
                                offset: Offset(-5.sp, -5.sp),
                                blurRadius: 8.sp,
                                color: Color(0xFFEAEFFF),
                                spreadRadius: 0
                            ),
                            BoxShadow(
                                offset: Offset(5.sp, 5.sp),
                                blurRadius: 10.sp,
                                color: Color(0xFFC2CCEB),
                                spreadRadius: 0
                            )
                        ]
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.sp, right: 10.sp),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Expanded(
                                child: 
                                    DropdownButton(                
                                        // Initial Value
                                        
                                        value: dropdownvalue,
                                        hint: Text("Type of Game", style: P14),  
                                        // Down Arrow Icon
                                        icon: const Icon(Icons.keyboard_arrow_down),    
                                         isExpanded: true,
                                        underline: const SizedBox(), // Remove the default underline
                                        // Array list of items
                                        items: items.map((String items) {
                                            return DropdownMenuItem(
                                                value: items,
                                                child: Text(items),
                                            );
                                        }).toList(),
                                        // After selecting the desired option,it will
                                        // change button value to selected value
                                        onChanged: (String? newValue) { 
                                            setState(() {
                                            dropdownvalue = newValue!;
                                            });
                                        },
                                        style: P12,
                                    ),

                            )
                        ]
                    ))
                )
            )
        );
    }
}
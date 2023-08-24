import 'package:flutter/material.dart';
import 'package:quizzerapp/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EnterPlayerName extends StatefulWidget {
  EnterPlayerName({ super.key});

//   String hintText;
//   String? icon;

  @override
  State<EnterPlayerName> createState() => _EnterPlayerNameState();
}

class _EnterPlayerNameState extends State<EnterPlayerName> {
    // Initial Selected Value
    String dropdownvalue = 'Enter Player Name';   
    
    // List of items in our dropdown menu
    var items = [    
        'Enter Player Name',
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          color: Color.fromRGBO(220,228,248,1),
          borderRadius: BorderRadius.circular(10.sp),
          border: Border.all(color: Color.fromRGBO(255, 255, 243, 1), width: 1),          
      ),
      padding: EdgeInsets.all(2.0.sp),
      child: Container(
          padding: EdgeInsets.only(top:7.5.sp,bottom:7.5.sp, left: 7.5.sp),
          height: 44.h,
          decoration: BoxDecoration(
              color: Color.fromRGBO(220,228,248,1),
              borderRadius: BorderRadius.circular(10.sp),
              border: Border.all(color: Color.fromRGBO(220,228,248,1), width: 1),
              boxShadow: [
                  // BoxShadow(
                  //   color: Colors.green,
                  // ),
                  BoxShadow(
                    offset: Offset(2.sp, 2.sp),
                    color: Colors.white70,
                    // spreadRadius: -4.sp,
                    blurRadius: 4.sp,
                  ),
                  BoxShadow(
                    offset: Offset(-2.sp, -2.sp),
                    color: Color.fromRGBO(186,195,223,1),
                    // spreadRadius: -4.sp,
                    blurRadius: 4.sp,
                  ),
            ],
          ),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Expanded(
                            child: 
                                DropdownButton(                
                                    // Initial Value
                                    
                                    value: dropdownvalue,
                                    hint: Text("Enter Player Name", style: P14),  
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
                )
      )
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/call_ringing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage14 extends StatelessWidget {
  const HomePage14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        child: Image.asset(MyImages.Image_fon1),
      ),
      SizedBox(
        height: 70,
      ),
      Container(child:
      Stack(children: [
        Container(
          padding: EdgeInsets.only(right: 15, top: 50),
          child:Image.asset(MyImages.Image_fastFood2, width: 380,color: 
      Theme.of(context).brightness == Brightness.dark?
             Colors.white70:Color(0xFFFBDF6A))),
       Container(
          padding: EdgeInsets.only(right: 15, bottom: 20),
          child:Image.asset(MyImages.Image_fastFood3, width: 70,color: 
      Theme.of(context).brightness == Brightness.dark?
             Colors.white70:Color(0xFFFBDF6A))),
        Container(
          padding: EdgeInsets.only(top: 330, left: 320),
          child:Image.asset(MyImages.Image_fastFood4, width: 85,color: 
      Theme.of(context).brightness == Brightness.dark?
             Colors.white70:Color(0xFFFBDF6A))),
        Container(
          padding: EdgeInsets.only(top: 65, left: 68),
          child:Image.asset(MyImages.Image_fastFood1, width: 250)),
        Container(
          padding: EdgeInsets.only(top: 66, left: 78),
          child:Image.asset(MyImages.Image_fastFood5, width: 40)),
        Container(
          padding: EdgeInsets.only(top: 315, left: 228),
          child:Image.asset(MyImages.Image_fastFood6, width: 50)),
       
      ],) 
      ),
      SizedBox(
        height: 60,
      ),
      Container(
          child: Text(
        'Food Ninja is Where Your',
        style: Mystyle.BentonSansBold700.copyWith(fontSize: 30),
      )),
      Container(
        child: Center(
            child: Text(
          'Comfort Food Lives',
          style: Mystyle.BentonSansBold700.copyWith(fontSize: 27),
        )),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
          child: Text(
        'Enjoy a fast and smooth food delivery at',
        style: TextStyle(fontSize: 13),
      )),
      Container(
        child: Center(
            child: Text(
          'your doorstep',
          style: TextStyle(fontSize: 13),
        )),
      ),
      Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Center(
          child: TextButton(
            onPressed: () {},
            child: Container(
              height: 56,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    colors: [myColors.C_53E88B, myColors.C_15BE77]),
              ),
              child: Center(
                  child: Text(
                'Next',
                style: TextStyle(color: myColors.C_FEFEFF, fontSize: 16),
              )),
            ),
          ),
        ),
        SizedBox(height: 36),
      ]))
    ]));
  }
}

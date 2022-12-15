import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/call_ringing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage13 extends StatelessWidget {
  const HomePage13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        child: Image.asset(MyImages.Image_fon1),
      ),
      SizedBox(
        height: 80,
      ),
      Container(child: Image.asset(MyImages.Image_shirinli, width: 400)),
      SizedBox(height: 20,),
      Container(
          child: Text(
        'Find your Comfort',
        style: Mystyle.BentonSansBold700.copyWith(fontSize: 30),
      )),
      Container(
        child: Center(
            child: Text(
          'Food here',
          style: Mystyle.BentonSansBold700.copyWith(fontSize: 30),
        )),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          child: Text(
        'Here You Can find a chef or dish for every',
        style: TextStyle(fontSize: 13),
      )),
      Container(
        child: Center(
            child: Text(
          'taste and color. Enjoy!',
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

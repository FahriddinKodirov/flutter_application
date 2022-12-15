import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/call_ringing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage5 extends StatelessWidget {
  const HomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(children: [
          Container(
            
            child: Image.asset(
              MyImages.Image_background8,color: Color(0xFF53E88B).withOpacity(0.6),),
          ),
          SizedBox(
            height: 170,
          ),
          Positioned(
              right: 120,
              top: 260,
              child: Image.asset(MyImages.Image_ok, width: 170)),
          Positioned(
              right: 115,
              top: 450,
              child: Text(
                'Congrats!',
                style: Mystyle.BentonSansBold700.copyWith(fontSize: 35,color: myColors.
                C_15BE77),
              )),
          Positioned(
              right: 20,
              top: 500,
              child: Text(
                'Your Profile Is Ready To Use',
                style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),
              )),
          Expanded(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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

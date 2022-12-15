import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/call_ringing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage12 extends StatelessWidget {
  const HomePage12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Image.asset(
              MyImages.Image_background3,
              color: Theme.of(context).brightness == Brightness.dark?
                          Colors.black12:null,
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(MyImages.Image_fruikty, width: 200)),
          Positioned(
              top: 500,
              right: 80,
              child: Text(
                'MasmasFood',
                style: Mystyle.BentonSansBold700.copyWith(fontSize: 38,
                color: myColors.C_15BE77, letterSpacing: 1)
              )),
          Positioned(
              top: 535,
              right: 110,
              child: Text(
                'Deliever Favorite Food',
                style: TextStyle(fontSize: 18),
              )),
         
        ]));
  }
}

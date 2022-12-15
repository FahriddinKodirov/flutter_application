import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Call.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage6 extends StatefulWidget {
  const HomePage6({super.key});

  @override
  State<HomePage6> createState() => _HomePage6State();
  
}


class _HomePage6State extends State<HomePage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(children: [
          Container(
            child: Image.asset(
              MyImages.Image_background3,
              color: Theme.of(context).brightness == Brightness.dark
                            ?Colors.black12:null,
            ),
          ),
          SizedBox(
            height: 170,
          ),
          Positioned(
              top: 280,
              right: 120,
              child: Image.asset(MyImages.Image_man, width: 150)),
          Positioned(
              right: 90,
              top: 460,
              child: Text(
                'Richard Lewis',
                style: Mystyle.BentonSansBold700.copyWith(
                  fontSize: 30
                ),
              )),
          Positioned(
              right: 150,
              top: 500,
              child: Text(
                'Ringing...',
                style: TextStyle(fontSize: 20),
              )),
          Positioned(
              bottom: 30,
              right: 105,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                Container(
                  child: TextButton(
                    
                    onPressed: () {},
                    child: Container(
                        child: Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            MyImages.Image_gromks1,
                            width: 80,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          left: 20,
                          bottom: 20,
                          top: 20,
                          child: Image.asset(
                            MyImages.Image_gromks2,
                            width: 45,
                          ),
                        )
                      ],
                    )),
                  ),
                ),
                Container(
                    child: TextButton(
                        onPressed: () {},
                        child: Container(
                            child: Stack(
                          children: [
                            Container(
                              child: Image.asset(
                                MyImages.Image_cancel1,
                                width: 75,
                              ),
                            ),
                            Positioned(
                              right: 20,
                              left: 20,
                              bottom: 20,
                              top: 20,
                              child: Image.asset(
                                MyImages.Image_cancel2,
                                width: 45,
                              ),
                            ),
                          ],
                        ))))
              ])),
          SizedBox(
            height: 25,
          )
        ]));
  }
}

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';

class HomePage23 extends StatefulWidget {
  const HomePage23({super.key});

  @override
  State<HomePage23> createState() => _HomePage23State();
}

class _HomePage23State extends State<HomePage23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color(0xFFFEA14E).withOpacity(0.4),
              Color(0xFFFEA14E).withOpacity(0.4),
              Color(0xFFFEA14E)
            ]),
          ),
          child:  SingleChildScrollView(physics: BouncingScrollPhysics(),
           child: SizedBox(
            height: 950,
            child: Container(
              child: Column(children: [
                  Row(children: [
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: 
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_backspace_rounded,size: 40,color: Colors.black,),),),
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 70),
                      child: Text('Next 7 Days', style: Mystyle.BentonSansBold700.copyWith(
                        fontSize: 20, color: Colors.black54
                      ),)),
                    
                  ],),
                  
                  SizedBox(height: 30,),
                  Stack(children: [
                    Container(
                      height: 240,
                      width: 360,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: myColors.C_FFFFFF.withOpacity(0.5),
                    ),),
                    Positioned(
                      left: 240,
                      top: 30,
                      child: Image.asset(MyImages.Image_quyosh, width: 80,)),
                    Positioned(
                      right: 35,
                      top:   50, 
                      child: Image.asset(MyImages.Image_bulut1,width: 100,)),
                    Positioned(
                      right: 80,
                      top:   50, 
                      child: Image.asset(MyImages.Image_wind,width: 190,)),
                    Positioned(
                      right: 1,
                      top:   70, 
                      child: Image.asset(MyImages.Image_humidity,width: 190,)),
                    Positioned(
                      right: 160,
                      top:   50, 
                      child: Image.asset(MyImages.Image_rainFall,width: 190,)),
                    Positioned(
                      right: 80,
                      top:   190, 
                      child: Text('50 %')),
                    Positioned(
                      right: 240,
                      top:   190, 
                      child: Text('1 cm')),
                    Positioned(
                      right: 150,
                      top:   190, 
                      child: Text('15.km/h')),
                 
                   Positioned(
                      right: 130,
                      top:   59, 
                      child: Text('19',style: Mystyle.BentonSansBold700.copyWith(fontSize: 15),)),
                   Positioned(
                      right: 262,
                      top:   55, 
                      child: Text('Tomorrow',style: Mystyle.BentonSansBook400.copyWith(fontSize: 15),)),
                 
                  ],),
                  SizedBox(height: 25,),
                  ObHavo('Thursday','21', MyImages.Image_quyosh),
                  SizedBox(height: 10,),
                  ObHavo('Friday', '17', MyImages.Image_bulut1),
                  SizedBox(height: 10,),
                  ObHavo1('Friday', '18', MyImages.Image_bulut1, MyImages.Image_quyosh),
                  SizedBox(height: 10,),
                  ObHavo('Satuday','23', MyImages.Image_quyosh),
                  SizedBox(height: 10,),
                  ObHavo('Sunday', '25', MyImages.Image_bulut1),
                  SizedBox(height: 10,),
                  ObHavo1('Monday', '16', MyImages.Image_bulut1, MyImages.Image_quyosh),
                  SizedBox(height: 10,),
                  
                 
                 
                 
                  
                  
              ],)),
          ),
          )
        ),
      ),
    );
  }

  Widget ObHavo(String day,String word,String gradus,){
    return Container(
      child: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Container(
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? myColors.C_252525
                      : myColors.C_FFFFFF.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0.5, 0.9),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 15,
                  child: Text(day, style: Mystyle.BentonSansBold700.copyWith(
                    fontSize: 14
                  ),)),
              Positioned(
                  left: 270,
                  top: 30,
                  child: Text(
                    word,
                    style: Mystyle.BentonSansBold700.copyWith(fontSize: 18),
                  )),
              Positioned(
                  left: 310,
                  top: 20,
                  child: Image.asset(gradus, width: 50,)),
              
            ],
          )),
        ],
      ),
    );
  }

  Widget ObHavo1(String day,String word,String gradus1, String gradus){
    return Container(
      child: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Container(
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? myColors.C_252525
                      : myColors.C_FFFFFF.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0.5, 0.9),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                ),
              ),
              Positioned(
                  top: 30,
                  left: 15,
                  child: Text(day, style: Mystyle.BentonSansBold700.copyWith(
                    fontSize: 14
                  ),)),
              Positioned(
                  left: 270,
                  top: 30,
                  child: Text(
                    word,
                    style: Mystyle.BentonSansBold700.copyWith(fontSize: 18),
                  )),
              Positioned(
                  left: 310,
                  top: 15,
                  child: Image.asset(gradus, width: 50,)),
              Positioned(
                  left: 310,
                  top: 30,
                  child: Image.asset(gradus1, width: 60,)),
              
            ],
          )),
        ],
      ),
    );
  }

  
}
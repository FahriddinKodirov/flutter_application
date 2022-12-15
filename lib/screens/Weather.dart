import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Weather2.dart';

class HomePage22 extends StatefulWidget {
  const HomePage22({super.key});

  @override
  State<HomePage22> createState() => _HomePage22State();
}

class _HomePage22State extends State<HomePage22> {
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
              Color(0xFFFEA14E).withOpacity(0.2),
              Color(0xFFFEA14E).withOpacity(0.4),
              Color(0xFFFEA14E)
            ]),
          ),
          child:  SingleChildScrollView(physics: BouncingScrollPhysics(),
           child: SizedBox(
            height: 1050,
            child: Container(
              child: Column(children: [
                  Row(children: [
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: 
                    TextButton(onPressed: () {},
                    child: Icon(Icons.search,size: 40,color: Colors.black,),),),
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 70),
                      child: 
                    TextButton(onPressed: () {},
                    child: Image.asset(MyImages.Image_nastroyka2)),),
                    Container(
                      padding: EdgeInsets.only(top: 15, left: 75),
                      child: 
                    TextButton(onPressed: () {},
                    child: Image.asset(MyImages.Image_nastroika3)),)
                  ],),
                  SizedBox(height: 34,),
                  Container(
                    padding: EdgeInsets.only(right: 160),
                    child: Text('Stokholm,\nSweden', style: Mystyle.BentonSansBook400.copyWith(
                      fontSize: 45
                    ),),),
                    SizedBox(height: 18,),
                  Container(
                    padding: EdgeInsets.only(right: 260),
                    child: Text('Tue, Jun 30', style: Mystyle.BentonSansBook400.copyWith(
                      fontSize: 18
                    ),),),
                  SizedBox(height: 18,),
                  Stack(children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                    ),
                    Positioned(
                      right: 235,
                      child: Image.asset(MyImages.Image_quyosh)),
                    Positioned(
                      right: 190,
                      top:   35, 
                      child: Image.asset(MyImages.Image_bulut1,width: 190,)),
                    Positioned(
                      right: 120,
                      top:   10, 
                      child: Image.asset(MyImages.Image_bulut1os2,width: 190,)),
                    Positioned(
                      right: 250,
                      top:   20, 
                      child: Image.asset(MyImages.Image_bulut1os3,width: 190,)),
                    Positioned(
                      right: 200,
                      top:   110, 
                      child: Image.asset(MyImages.Image_rain,width: 190,)),
                   Positioned(
                      right: 60,
                      top:   50, 
                      child: Text('19',style: Mystyle.BentonSansBold700.copyWith(fontSize: 80),)),
                   Positioned(
                      right: 62,
                      top:   120, 
                      child: Text('Rainy',style: Mystyle.BentonSansBook400.copyWith(fontSize: 35),)),
                  Positioned(
                      top: -35,
                      left: 255,
                      child: Image.asset(MyImages.Image_grodus,width: 190,)),
                  ],),
                  SizedBox(height: 25,),
                  ObHavo(MyImages.Image_rainFall2, 'RainFall', '3CM'),
                  SizedBox(height: 10,),
                  ObHavo(MyImages.Image_wind1, 'RainFall', '19km/h'),
                  SizedBox(height: 10,),
                  ObHavo(MyImages.Image_humidity1, 'RainFall', '64%'),
                  SizedBox(height: 20,),
                  Mundarija('Tuday', 'Tomorrow', 'Next 7 day    >'),
                  SizedBox(height: 20,),
                  Container(child: Image.asset(MyImages.Image_chiziq),),
                  SizedBox(height: 20,),
                  
                  Container(
                                  height: 155,
                                  width: 370,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Pagoda('monday', '20'),
                                      SizedBox(width: 12,),
                                      Pagoda2('Tuesday', '18'),
                                      SizedBox(width: 12,),
                                      Pagoda3('Thursday', '20'),
                                      SizedBox(width: 12,),
                                      Pagoda('Friday', '17'),
                                      SizedBox(width: 12,),
                                      Pagoda3('Saturday', '19'),
                                      SizedBox(width: 12,),
                                      Pagoda('Sunday', '16'),
                                      SizedBox(width: 12,),
                                      Pagoda2('monday', '21'),
                                      SizedBox(width: 12,),
                                      Pagoda3('Tuesday', '22'),
                                    ]
                                  )),
                  
              ],)),
          ),
          )
        ),
      ),
    );
  }

  Widget ObHavo(String surat,String word,String gradus,){
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
                  left: 5,
                  bottom: 2,
                  child: Image.asset(
                    surat,
                    width: 90,
                  )),
              Positioned(
                  left: 100,
                  top: 30,
                  child: Text(
                    word,
                    style: Mystyle.BentonSansBold700.copyWith(fontSize: 18),
                  )),
              Positioned(
                  left: 300,
                  top: 30,
                  child: Text(
                    gradus,
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white24
                            : Colors.black38),
                  )),
              
            ],
          )),
        ],
      ),
    );
  }

   Widget Mundarija(String mundarija, String sana,String son){
    return Container(child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 25),
          child: Text(mundarija, style: Mystyle.BentonSansBold700.copyWith(fontSize: 17
          ),),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, right: 30),
          child: Text(sana, style: Mystyle.BentonSansBold700.copyWith(fontSize: 17,
          color: Colors.black38),
        ),),
        
        Container(
          padding: EdgeInsets.only(top: 10, right: 40),
          child: TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage23()));
          }, 
          child: Text(son, style: Mystyle.BentonSansBold700.copyWith(fontSize: 17,
          color: Colors.black26),
        ),),),

         

      ],),);
  }

  Widget Pagoda(String day, String gradus){
    return Container(
              width: 80,
                height: 140,
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
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
               child: Column(children: [
                 Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(day,style: TextStyle(fontSize: 18),),
                 ),
                 
                 Stack(children: [
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    child: Image.asset(MyImages.Image_quyosh,width: 60,),
                  ),
                  Positioned(
                    top: 19,
                    child: Image.asset(MyImages.Image_bulut1, width: 78,)),
                 
                 ],),
                 SizedBox(height: 8,),
                 Container(
                  padding: EdgeInsets.only(top: 3, right: 4),
                  child: Text(gradus, style: Mystyle.BentonSansBold700.copyWith(
                      fontSize: 20
                 ),)
                 )
               ],),
    );
  }

  Widget Pagoda2(String day, String gradus){
    return Container(
              width: 80,
                height: 140,
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
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
               child: Column(children: [
                 Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(day,style: TextStyle(fontSize: 17),),
                 ),
                 
                 SizedBox(height: 8,),
                  Container(
                    
                    child: Image.asset(MyImages.Image_quyosh,width: 60,),
                  ),
                
                 
                 SizedBox(height: 5,),
                 Container(
                  padding: EdgeInsets.only(top: 3, right: 4),
                  child: Text(gradus, style: Mystyle.BentonSansBold700.copyWith(
                      fontSize: 20
                 ),)
                 )
               ],),
    );
  }

 Widget Pagoda3(String day, String gradus){
    return Container(
              width: 80,
                height: 140,
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
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
               child: Column(children: [
                 Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(day,style: TextStyle(fontSize: 18),),
                 ),
                 
                 Container(
                  padding: EdgeInsets.only(top: 7),
                  child:Image.asset(MyImages.Image_bulut1) ,),
                 Container(
                  padding: EdgeInsets.only(top: 3, right: 4),
                  child: Text(gradus, style: Mystyle.BentonSansBold700.copyWith(
                      fontSize: 20
                 ),)
                 )
               ],),
    );
  }
}
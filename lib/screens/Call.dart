import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage7 extends StatelessWidget {
  const HomePage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(children: [
      Container(child: Center(child: Image.asset(MyImages.Image_fon1),
      ),),
      SizedBox(height: 170,),
      
      Container(child: 
        Image.asset(MyImages.Image_man, width: 150)),
      SizedBox(height: 20,),
      Container(
        child: Text('Richard Lewis', style: Mystyle.BentonSansBold700.copyWith(
          fontSize: 30
        ),)),  
      SizedBox(height: 10,),
      Container(
      child: Text('15.23', style: TextStyle(fontSize: 15),)),
        
      Expanded(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Container(child:
                InkWell(
                  borderRadius: BorderRadius.circular(35),
                  onTap
                  : (){}, child:
                Container(
                  child: Stack(children: [
                    Container(
                      child: Image.asset(MyImages.Image_gromks1, width: 75,),
                    ),
                    Positioned(
                      right: 20,
                      left:  20,
                      bottom: 20,
                      top: 20,
                      child:Image.asset(MyImages.Image_gromks2,width: 45,),
                    ), Positioned(
                      right: 20,
                      left:  20,
                      bottom: 20,
                      top: 20,
                      child:Image.asset(MyImages.Image_gromks3,width: 45,),),
],)
                  
                  ),
                  
                  
                  ),
                ),
               
              Container(child:
                InkWell(
                  borderRadius: BorderRadius.circular(35),
                  onTap: (){
                  Navigator.pop(context);
                }, child:
                Container(
                  child: Stack(children: [
                    Container(
                      child: Image.asset(MyImages.Image_cancel1, width: 75,),
                    ),
                    Positioned(
                      right: 20,
                      left:  20,
                      bottom: 20,
                      top: 20,
                      child:Image.asset(MyImages.Image_cancel2,width: 45,),
                    ),
                    
],))))
              ])
            ),
        SizedBox(height: 25,)
       ])
      );
     
    }
 




}
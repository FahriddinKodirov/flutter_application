import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Set_location.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
       backgroundColor: Theme.of(context).brightness == Brightness.dark
                            ?Colors.black: myColors.C_FEFEFF,
        leading: TextButton(
          onPressed: () {}, child: Expanded(child:
          Container(
          decoration: BoxDecoration(),
          height: 60,
          child: Image.asset(MyImages.Image_back_arrow3)))),
          elevation: 0,),
           
      body: Container(
        color: Theme.of(context).brightness == Brightness.dark
                            ?Colors.black: myColors.C_FEFEFF,
       padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Padding( padding: EdgeInsets.only(left: 5),
            child: Text('Upload Your Photo\nProfile',style: Mystyle.BentonSansBold700
            .copyWith(fontSize: 30, height: 1.2),)),
            SizedBox(height: 20),
            Padding(padding: EdgeInsets.only(left: 5),
            child: Text(
               'This data will be displayed in your account\nprofile for security', 
               style: TextStyle(fontSize: 14),),),
            SizedBox(height: 60),
            buildButton(MyImages.Image_Photo),
            Expanded(
             child: Column(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                Center(child:
                TextButton(onPressed: (){}, child:
                Container(
                  height: 56,
                  width: 150,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(colors: [myColors.C_53E88B, myColors.C_15BE77]),
                  ),
                  
                  child: Center(child: Text('Next',style: TextStyle(color: myColors.C_FEFEFF,fontSize: 16),)),
                  ),
                ),
                ),
                SizedBox(height: 36),
              ])
            )
       ]),
      )
      );
    }
 

Widget buildButton(String ImageName){
  return  
          Container(
         
          child: Stack(children: [
            Center( child: Container(
            height: 220,
            width: 260,
            decoration:BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(20)),),
            child:Container(
            height: 250,
            width: 250,
            child: Image.asset(ImageName),
            ),
           ),
          ),
            Positioned(
            top: 10,
            right: 65,
            child: 
            Image.asset(MyImages.Image_back_x, width: 30,),
            )
          
            
          ]), 
          
  );
} 


}
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Signup_success_notification.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage4 extends StatelessWidget {
  const HomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
       backgroundColor: Theme.of(context).brightness == Brightness.dark?
             Colors.black:myColors.C_FEFEFF,
        leading: TextButton(
          onPressed: () {}, child: Expanded(child:
          Container(
          decoration: BoxDecoration(),
          height: 60,
          child: Image.asset(MyImages.Image_back_arrow3,)))),
          elevation: 0,),
           
      body: Container(
        color: Theme.of(context).brightness == Brightness.dark?
             Colors.black:myColors.C_FEFEFF,
       padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Padding( padding: EdgeInsets.only(left: 5),
            child: Text('Set Your Location ',style: Mystyle.BentonSansBold700.copyWith(
              fontSize: 30
            ))),
            SizedBox(height: 30),
            Padding(padding: EdgeInsets.only(left: 5),
            child: Text(
               'This data will be displayed in your account\nprofile for security', 
               style: TextStyle(fontSize: 14),),),
            SizedBox(height: 30,),
            
            Container(
              height: 160,
              width: 370,
              child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF, boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1,
                  offset: Offset(0.1, 0.3),),],
                  borderRadius: BorderRadius.all(Radius.circular(20))) ,),
               Positioned(
                left: 10,
                top: 15,
                child: Image.asset(MyImages.Image_location2, width: 40,),),
                Positioned(
                left: 80,
                top: 24,
                child: Text('Your Location',style: TextStyle(fontSize: 18),)),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Theme.of(context).brightness == Brightness.dark?
                      Colors.white12:Colors.grey[100],),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 130),
                          hintText: 'Set Location', 
                          hoverColor: Theme.of(context).brightness == Brightness.dark
                            ?myColors.C_FFFFFF:null,
                          border: InputBorder.none,
                  ),
                  ),
                
                  )
                  )
            
          ]), 
          
  ),
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
 




}
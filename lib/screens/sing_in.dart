import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/call_ringing.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage16 extends StatelessWidget {
  const HomePage16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        child: Image.asset(MyImages.Image_background3, color: 
        Theme.of(context).brightness == Brightness.dark? Colors.black12:null,),
      ),
      Positioned(
          right: 120,
          top: 100,
          child: Image.asset(MyImages.Image_fruikty, width: 170)),
      Positioned(
          top: 240,
          right: 90,
          child: Text(
            'MasmasFood',
            style: Mystyle.BentonSansBold700.copyWith(fontSize: 35, color: myColors.
            C_53E88B),
          )),
      Positioned(
          top: 272,
          right: 125,
          child: Text(
            'Deliever Favorite Food',
            style: TextStyle(fontSize: 15),
          )),
      Positioned(
        top: 350,
        right: 110,
        child: Text(
          'Sign Up For Free ',
          style: Mystyle.BentonSansBold700.copyWith(fontSize: 20),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Positioned(
        top: 390,
        right: 20,
        child: Container(
            height: 60,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(0.1, 0.3)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Image.asset(
                          MyImages.Image_person,
                          width: 25,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Anamwp ..|',
                        style: TextStyle(fontSize: 16, color: Theme.of(context).brightness == Brightness.dark?
             Colors.white12:Colors.black12),
                      ),
                    )
                  ],
                ))),
      ),
      Positioned(
        top: 460,
        right: 20,
        child: Container(
            height: 60,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(0.1, 0.3)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Image.asset(
                          MyImages.Image_sms,
                          width: 25,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 16, color: Theme.of(context).brightness == Brightness.dark?
             Colors.white12:Colors.black12),
                      ),
                    )
                  ],
                ))),
      ),
      SizedBox(
        height: 8,
      ),
      Positioned(
        top: 530,
        right: 20,
        child: Container(
            height: 60,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark?
             myColors.C_252525:myColors.C_FFFFFF,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        offset: Offset(0.1, 0.3)),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                padding: EdgeInsets.only(left: 15, top: 15),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Image.asset(
                          MyImages.Image_culub,
                          width: 25,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 16, color: Theme.of(context).brightness == Brightness.dark?
             Colors.white12:Colors.black12),
                      ),
                    )
                  ],
                ))),
      ),
      Positioned(
        top: 600,
        right: 250,
        child: Container(
            child: Row(
          children: [
            Container(
              child: Stack(children: [
                Container(
                  
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: myColors.C_15BE77,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                 ),),
                 
                  Align(
                    child: Icon(Icons.add_task_sharp,color: Colors.white,),
                  )
                  
                  ],),
                
                ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 2),
              child: Text(
                'Keep Me Signed In',
                style: TextStyle(fontSize: 12, color: Theme.of(context).brightness == Brightness.dark?
             Colors.white30:Colors.black54),
              ),
            )
          ],
        )),
      ),
      Positioned(
        top: 640,
        right: 184,
        child: Container(
            child: Row(
          children: [
            Container(
              child: Stack(children: [
                Container(
                  
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: myColors.C_15BE77,
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                 ),),
                 
                  Align(
                    child: Icon(Icons.add_task_sharp, color: Colors.white,),
                  )
                  
                  ],),),
                
            Container(
              padding: EdgeInsets.only(left: 10, bottom: 10),
              child: Text(
                'Email Me About Special Pricing',
                style: TextStyle(fontSize: 12, color: Theme.of(context).brightness == Brightness.dark?
             Colors.white30:Colors.black54),
              ),
            )
          ],
        )),
      ),
      Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Center(
          child: TextButton(
            onPressed: () {},
            child: Container(
              height: 56,
              width: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    colors: [myColors.C_53E88B, myColors.C_15BE77]),
              ),
              child: Center(
                  child: Text(
                'Great Account',
                style: TextStyle(color: myColors.C_FEFEFF, fontSize: 16),
              )),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        )
      ])),
      
      Positioned(
        top: 790,
        right: 127,
        child: Text(
          'already have an account?',
          style: TextStyle(color: myColors.C_15BE77),
        ),
      ),
    ]));
  }
}

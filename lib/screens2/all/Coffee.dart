import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
class coffee extends StatelessWidget {
  const coffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.Image_Coffee),fit: BoxFit.fill
              )
              
          )),
          Positioned(
            child: Image.asset(MyImages.Image_coffee1),
          ),
         
           Positioned(
            top: 180,
            left: 25,
            child: Container(
              width: 360,
              height: 420,
              
              decoration: BoxDecoration(
              color: myColors.C_FFFFFF,
              borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(child: Text('Start here', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xFF74533D))),
            )
          )),
          


        ],
          
        ),
      
      ),

    );
  }
}
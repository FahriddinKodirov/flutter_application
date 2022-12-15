import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/Utils/register.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center, 
          child: Text('Otp', style: TextStyle(fontSize: 35,
          fontWeight: FontWeight.w400))),
          SizedBox(height: 70,),
          Container(
            child: Image.asset(MyImages.Image_QuizApp,width: 150,),
          ),
          SizedBox(height: 60,),
          Container(child: Text('Enter your 6 digit otp here',
          style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.w300, color: Colors.black26))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: Image.asset(MyImages.Image_chiziqcha,)
          ),
          Container(
            height: 55,
            width: 240,
            decoration: BoxDecoration(
              color:  Color(0xFFFCA82F),
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
            },
            child: Text('Login', style: TextStyle(color:  Colors.white,fontSize: 20)),
          )),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text('login with social media',
             style: TextStyle(color:  Colors.black26,fontSize: 22)),
          ),
          SizedBox(height: 60,),
          Container(
            width: double.infinity,
            height: 180,
            child: Expanded(
              child: Image.asset(MyImages.Image_minora)),
          )
        ],),
      ),
    );
  }
}
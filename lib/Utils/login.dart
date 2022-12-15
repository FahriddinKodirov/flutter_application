import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/Utils/otp.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center, 
            child: Text('Login', style: TextStyle(fontSize: 40,
            fontWeight: FontWeight.w500))),
            SizedBox(height: 40,),
            Container(
              child: Image.asset(MyImages.Image_telephon),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26)),
        
                  
                  hintText: 'Enter your mobile number',
                  helperStyle: TextStyle(color: Colors.black26),
                  border: InputBorder.none
                ),
                
              ),
            ),
            Container(
              height: 55,
              width: 240,
              decoration: BoxDecoration(
                color:  Color(0xFFFCA82F),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Otp()));
              },
              child: Text('Login', style: TextStyle(color:  Colors.white,fontSize: 20)),
            )),
            Container(
              padding: EdgeInsets.only(top: 120),
              child: Text('     term’s and conditons apply\nPOWERD BY - sparrowdevops.com',
               style: TextStyle(color:  Colors.black26,fontSize: 16)),
            )
          ],),
        ),
      ),
    );
  }
}
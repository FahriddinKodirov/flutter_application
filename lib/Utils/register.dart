import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/New/home_page_login.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/Utils/otp.dart';
import 'package:flutter_application_1/screens/Weather2.dart';
import 'package:flutter_application_1/screens2/all/question_manu.dart';
import 'package:flutter_application_1/screens2/question1/question_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool istrue = false;
  var words = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center, 
            child: Text('Register', style: TextStyle(fontSize: 35,
            fontWeight: FontWeight.w400))),
            SizedBox(height: 70,),
            Container(
              child: Image.asset(MyImages.Image_QuizApp,width: 150,),
            ),
            SizedBox(height: 60,),
            login('Enter your Name'),
            
            SizedBox(height: 20,),
            Container(
              height: 55,
              width: 240,
              decoration: BoxDecoration(
                color:  Color(0xFFFCA82F),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(onPressed: () {
                saveLogin(context);
              },
              child: Text('Register', style: TextStyle(color:  Colors.white,fontSize: 22)),
            )),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text('if you have already account click here',
               style: TextStyle(color:  Colors.black26,fontSize: 18)),
            ),
            SizedBox(height: 60,),
            Container(child: Text(words,style: TextStyle(fontSize: 30,color: Colors.black),),)
          
          ],),
        ),
      ),
    );
  }

Widget login(word){
  return Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: TextField(
                onChanged: ((value) {
                  setState(() {
                    words = value;
                  });
                }),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12)),
        
                  
                  hintText: word,
                  helperStyle: TextStyle(color: Colors.grey[50]),
                  border: InputBorder.none
                ),
                
              ),
            );
}

void saveLogin(context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool("isLoggedIn", true);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>    QuestionManu()));
  }

}
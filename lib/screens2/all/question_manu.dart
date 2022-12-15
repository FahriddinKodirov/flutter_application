import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/Utils/register.dart';
import 'package:flutter_application_1/screens2/question1/question_page.dart';
import 'package:flutter_application_1/screens2/question2/question_page2.dart';
import 'package:flutter_application_1/screens2/question3/question_page3.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuestionManu extends StatelessWidget {
  QuestionManu({super.key});
 List<Widget> list = [
  Question(),
 
 ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Center(child: Image.asset(MyImages.Image_QuizApp)),
        actions: [
          IconButton(
            splashRadius: 15,
            onPressed: (){
              saveLogin(context);
            }, 
          icon: Icon(Icons.logout_outlined))
        ],
      ),
      
      body: SafeArea(
        child: Column(children: [
          Stack(
            children:[
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
              child: Image.asset(MyImages.Image_lets_play)
            ),
            Positioned(
              left: 265,
              top: 50,
              child: Image.asset(MyImages.Image_test,width: 130,)
            )]),
             
              InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Question()));
              }),  
              child: Manu(context,MyImages.Image_test2,'Matimetika', '0:50m', '\$900')),
              InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Question2()));
              }),  
              child: Manu(context,MyImages.Image_test1,'English', '1:40m', '\$700')),
              InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Question3()));
              }),  
              child: Manu(context,MyImages.Image_test3,'Rimskiy son', '1:15m', '\$500'))
              
      
      
            
          
        ],),
      ),
    );
  }
  Widget Manu(context, plakat,name, minut, money){
    return Stack(
              children:[
                Container(
                margin: EdgeInsets.only(right: 5, left: 15),
                child: Image.asset(plakat),),
                Positioned(
                  left: 60,
                  top: 55,
                  child: Text(name,style: TextStyle(color: Colors.white,
                  fontSize: 20),)),
                  Positioned(
                  left: 200,
                  top: 55,
                  child: Text(minut,style: TextStyle(color: Colors.white,
                  fontSize: 20),)),
                  Positioned(
                  left: 330,
                  top: 56,
                  child: Text(money,style: TextStyle(color: Colors.white,
                  fontSize: 20),))
              ] 
            );

  }

  void saveLogin(context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool("isLoggedIn", false);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Register()));
  }
}
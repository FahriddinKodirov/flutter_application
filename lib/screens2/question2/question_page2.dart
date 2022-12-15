import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens2/animation_widget.dart';
import 'package:flutter_application_1/screens2/question1/answers_widget.dart';
import 'package:flutter_application_1/screens2/question2/question_answer2.dart';
import 'package:flutter_application_1/screens2/question1/question_model.dart';
import 'package:flutter_application_1/screens2/question2/question_model2.dart';
import 'package:flutter_application_1/screens2/question1/question_widget.dart';
import 'package:flutter_application_1/screens2/question2/question_widget2.dart';
import 'package:flutter_application_1/screens2/question1/result_page.dart';
import 'package:flutter_application_1/screens2/timer.dart';

class Question2 extends StatefulWidget {
  Question2({super.key});

  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
   int start = 20;
   double qurrentWith = 0;
   int currentQuestinoIndex = 0;
   String buttenText = 'NEXT QUESTIONS';
   Map<int, bool> userResult = {
    1: false,
    2: false,
    3: false,
    4: false,

   
   };
   
  
  
   @override
   void initState(){
    super.initState();
    QuestionModel.questions.map((q) {
      q.option1.isSelected = false;
      q.option2.isSelected = false;
      q.option3.isSelected = false;
      q.option4.isSelected = false;
    }).toList();
    Timer.periodic(Duration(seconds: 1),(timer){
       setState(() {
        if(start != 0){
          start--;
        }else{
          nextQuestion();
        }
       });
    });
   }
  
   
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6066D0),
        title: Text("Quiz"),
      ),
      body: Column(children: [
        SizedBox(height: 10),
        
        
        
        Container(
          padding: EdgeInsets.only(left: 90),
          child: Stack(
            children:[
             Container(
              
              height: 250,
              width: 250,
              child: CircularProgressIndicator(
                
                color: Color(0xFF6066D0).withOpacity(0.2),
                strokeWidth: 8,
                value: 1,
              ),
            ),
            Positioned(
              height: 250,
              width: 250,
              child:  TweenAnimationBuilder<double>(
                    curve: Curves.fastOutSlowIn,
                    
                    builder: (BuildContext context, value, Widget? child) {
                      return  CircularProgressIndicator(
                
                color: Colors.teal[300],
                strokeWidth:4,
                value: value,
              );
              },
              tween: Tween<double>(begin: 5.3, end: start / 20),
                    duration: Duration(seconds: 1),
                    
              )
            ),
            Positioned(
            
              child:QuestinoWidget2(questinoTitle: QuestionMOdel2.questions[currentQuestinoIndex].question2, 
          index: currentQuestinoIndex + 1,), ),
          Positioned(
              left: 90,
              top: 10,
              child:Timer_widget(second: start),)
        
        
            ] 
          ),
        ),
        animation(currentWidth: (MediaQuery.of(context).size.width * 0.78) *
                ((currentQuestinoIndex + 1) / QuestionModel.questions.length)),
        AnswerWidget2(
          onAnswerSelecteed: (istrue){
            userResult[currentQuestinoIndex] = istrue;
          },
          questionModel2: QuestionMOdel2.questions[currentQuestinoIndex],),
      
      SizedBox(height: 40,),
      Container(
        height: 40,
        width: 160,
        
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF6066D0)),
          onPressed: nextQuestion, 
        child: Text(buttenText)),
      ),
      ],
      ),
    );
  }

  nextQuestion() {
    setState(() {
      if (buttenText == "Finish") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Result_Page(
              userResult: userResult,
            ),
          ),
        );
      }
      if (currentQuestinoIndex != QuestionModel.questions.length - 1) {
        start = 20;
        currentQuestinoIndex++;
      }
      if (currentQuestinoIndex == QuestionModel.questions.length - 1) {
        buttenText = "Finish";
      }
    });
  }
}

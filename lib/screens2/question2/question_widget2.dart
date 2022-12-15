import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuestinoWidget2 extends StatelessWidget {
  String questinoTitle;
  int index;
  QuestinoWidget2({super.key,required this.questinoTitle, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 70,),
        Padding(padding: EdgeInsets.only(left: 25),
          child: Text('Questino - ${index}', style: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 20, color: Colors.blue
          )),
        ),
        Padding(padding: EdgeInsets.only(left: 60,top: 25),
        child: Text(questinoTitle, style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 45, height: 1)))
      ]),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuestinoWidget extends StatelessWidget {
  String questinoTitle;
  int index;
  QuestinoWidget({super.key,required this.questinoTitle, required this.index});

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
        Padding(padding: EdgeInsets.only(left: 15,top: 15),
        child: Text(questinoTitle, style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 35, height: 1)))
      ]),
    );
  }
}
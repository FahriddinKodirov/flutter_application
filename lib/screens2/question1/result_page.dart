import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result_Page extends StatelessWidget {
  Map<int, bool> userResult;
  
  Result_Page({super.key, required this.userResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text('Result'),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 40,),
          Container(
            child: Text('Yoy are result',style: TextStyle(fontSize: 50, fontFamily: 'Satisfy'),),
          ),
          
          SizedBox(height: 20,),
          ListView.separated(
            shrinkWrap: true,
            itemCount: userResult.length,
            itemBuilder: (context, index){
            return Container(
              
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text('Question ${index + 1}',style: TextStyle(fontSize: 40, fontFamily: 'Satisfy')),
              userResult[index]!?Icon(Icons.check_box, color: Colors.green,size: 40,):
              Icon(Icons.clear, color: Colors.red, size: 40)
              ],),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 8,);
          }),
          
          
        ],),
      ),
      
    );
  }
}
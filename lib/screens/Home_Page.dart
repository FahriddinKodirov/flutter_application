import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Grid View'),),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
        Row( children: [
          Container(
            height: 220,
            width:  175,
            color: Colors.black,
          ),
          SizedBox(width: 10,),
          Container(
            height: 220,
            width:  175,
            color: Colors.red,
          ),
          
          
          ],),
          Row( children: [
          Container(
            height: 220,
            width:  175,
            color: Colors.yellow,
          ),
          SizedBox(width: 10,),
          Container(
            height: 220,
            width:  175,
            color: Color.fromARGB(60, 196, 120, 120),
          ),
          
          
          ],),
             Row( children: [
          Container(
            height: 220,
            width:  175,
            color: Colors.green,
          ),
          SizedBox(width: 10,),
          Container(
            height: 220,
            width:  175,
            color: Colors.blue,
          ),
          
          
          ],)
        ]),)

      
    );
  }
}
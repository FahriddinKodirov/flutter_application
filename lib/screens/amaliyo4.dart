import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/amaliyot.dart';
import 'package:flutter_application_1/screens/amaliyot1.dart';
import 'package:flutter_application_1/screens/amaliyot2.dart';
import 'package:flutter_application_1/screens/amalyoy3.dart';

class Home10 extends StatefulWidget {
  const Home10({super.key});

  @override
  State<Home10> createState() => _Home10State();
}

class _Home10State extends State<Home10> {
  int Index = 0;
   List<Widget> _page = [
   
    MyWidget(),
    MyWidget1(),
    MyWidget2(),
    MyWidget3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[Index],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: (int index){
          setState(() {
            Index = index;
          });
        },
        currentIndex: Index,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.paste_sharp),
          label: 'Back'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance),
          label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box_outline_blank_sharp),
          label: 'Forget'),
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Dubai'),
        ],
      ),
    );
  }
}
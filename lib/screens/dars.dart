import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Payment_method.dart';
import 'package:flutter_application_1/screens/Payments.dart';
import 'package:flutter_application_1/screens/Upload_Photo.dart';

class homePageOne extends StatefulWidget {
  const homePageOne({super.key});

  @override
  State<homePageOne> createState() => _homePageOneState();
}


class _homePageOneState extends State<homePageOne> {
  int selectIndex = 0;
  List<Widget> _page = [
    HomePage1(),
    HomePage2(),
    HomePage10(),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            selectIndex = index;
          });
        },
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_rounded),
          label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp),
          label: 'search'),
        ],
      )
      
    );
  }
}
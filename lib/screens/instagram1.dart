import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/InsSearch.dart';
import 'package:flutter_application_1/screens/IntVideo.dart';
import 'package:flutter_application_1/screens/Payment_method.dart';
import 'package:flutter_application_1/screens/amaliyot.dart';
import 'package:flutter_application_1/screens/amaliyot1.dart';
import 'package:flutter_application_1/screens/amaliyot2.dart';
import 'package:flutter_application_1/screens/amalyoy3.dart';
import 'package:flutter_application_1/screens/InstagramHome.dart';
import 'package:flutter_application_1/screens/favorite.dart';
import 'package:flutter_application_1/screens/person.dart';
import 'package:flutter_application_1/screens2/all/instProfile.dart';

class instagram1 extends StatefulWidget {
  const instagram1({super.key});

  @override
  State<instagram1> createState() => _instagram1State();
}

class _instagram1State extends State<instagram1> {
   int Index = 0;
   List<Widget> _page = [
   
    instagram2(),
    insSearch(),
    insVideo(),
    favorite(),
    instprofile(),
    
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
        type: BottomNavigationBarType.fixed,
        currentIndex: Index,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black45,
        backgroundColor: Colors.grey[200],
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30,),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation_rounded , size: 30,),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined, size: 30,),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 30,),
          label: ''),
        ],
      ),
    );
  }
}
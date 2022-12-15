import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class animation extends StatelessWidget {
  double currentWidth;
  animation({super.key, required this.currentWidth});
  
  

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        height: 20,
        width: (MediaQuery.of(context).size.width * 0.8),
        decoration: BoxDecoration (
        color:Colors.white,
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(18)
      )),
      
      Positioned(
        top: 14,
        left: 35,
        child: AnimatedContainer(
          height: 10,
          curve: Curves.ease,
          width: currentWidth,
          decoration: BoxDecoration(
            color: Colors.teal[300],
            borderRadius: BorderRadius.circular(18)), 
            duration: Duration(milliseconds: 500),
          // child: ,
        ))
    ],
    );
  }
}

// 0xFFFCA82F

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';

class person extends StatelessWidget {
  const person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Container(
          child: Center(
            child: Text('Person', style: Mystyle.BentonSansBold700.copyWith(
              fontSize:100 ),),
          ))),
    );
  }
}
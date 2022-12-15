import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Timer_widget extends StatefulWidget {
  int second;
  Timer_widget({super.key, required this.second});

  @override
  State<Timer_widget> createState() => _Timer_widgetState();
}

class _Timer_widgetState extends State<Timer_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Text(widget.second.toString(), style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700,
      color: Colors.blueGrey),),
    );
  }
}
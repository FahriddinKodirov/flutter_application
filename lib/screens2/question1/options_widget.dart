import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OptionWidget extends StatefulWidget {
  String optino;
  bool isSelected;
  VoidCallback onTap;
  OptionWidget({super.key, required this.optino, required this.onTap,
                required this.isSelected});

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
      decoration: BoxDecoration(
      color: widget.isSelected?Colors.green:Colors.white,
      boxShadow: [BoxShadow(
        blurRadius: 3,
        spreadRadius: 3,
        color: Color(0xFF6066D0),
        )],
        borderRadius: BorderRadius.circular(24)
      ),
      margin: EdgeInsets.only(top: 20, left: 40, right: 40),
      padding: EdgeInsets.all(18),
      width: double.infinity,
      
      child: Text(widget.optino, style: TextStyle(fontSize: 18),))
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/MyStylis.dart';
import 'package:flutter_application_1/Utils/colors.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/screens/Call2.dart';
import 'package:flutter_application_1/screens/Payment_method.dart';
import 'package:flutter_application_1/screens/Video.dart';
import 'package:flutter_application_1/screens/contact.dart';

class insVideo extends StatefulWidget {
  const insVideo({super.key});

  @override
  State<insVideo> createState() => _insVideoState();
}

class _insVideoState extends State<insVideo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'username',
            style: Mystyle.BentonSansBold700.copyWith(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 122),
                child: Image.asset(
                  MyImages.Image_down,
                  width: 18,
                )),
            Padding(
              padding: EdgeInsets.only(right: 13),
              child: Image.asset(
                MyImages.Image_plus2,
                width: 26,
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Padding(
                padding: EdgeInsets.only(right: 13),
                child: Image.asset(
                  MyImages.Image_insNastroyka,
                  width: 22,
                )),
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
            Tab(
              icon: Image.asset(MyImages.Image_video, color: Colors.black,width: 20,),
            ),
            Tab(
              icon: Image.asset(MyImages.Image_contact, color: Colors.black,width: 20,),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Video(),
          contact(),
        ]),
      ),
    );
  }
}

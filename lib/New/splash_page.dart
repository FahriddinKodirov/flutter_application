import 'package:flutter/material.dart';
import 'package:flutter_application_1/New/home_page_login.dart';
import 'package:flutter_application_1/Utils/images.dart';
import 'package:flutter_application_1/Utils/register.dart';
import 'package:flutter_application_1/screens/Home_Page.dart';
import 'package:flutter_application_1/screens/Weather2.dart';
import 'package:flutter_application_1/screens2/all/question_manu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLog = false;

  Future<bool> isLoggedIn() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    isLog = _pref.getBool("isLoggedIn") ?? false;
    return _pref.getBool("isLoggedIn") ?? false;
  }

  @override
  void initState() {
    super.initState();

    isLoggedIn();
    goNext();
  }

  void goNext() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            return isLog ? QuestionManu() : Register();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF4047C1),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(MyImages.Image_welcome), fit: BoxFit.cover)
        ),
        child: Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28, color: Color(0xFFFFFEFC)),)),
        ),
      
      )),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/New/aktualnoy.dart';
import 'package:flutter_application_1/New/splash_page.dart';
import 'package:flutter_application_1/Utils/Theme.dart';
import 'package:flutter_application_1/Utils/register.dart';
import 'package:flutter_application_1/screens/Payment_method.dart';
import 'package:flutter_application_1/screens/Weather.dart';
import 'package:flutter_application_1/screens/instagram1.dart';
import 'package:flutter_application_1/screens2/all/question_manu.dart';
import 'package:flutter_application_1/screens2/home_page.dart';
import 'package:flutter_application_1/screens2/valuta_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
    await ScreenUtil.ensureScreenSize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if(!currentFocus.hasPrimaryFocus){
              currentFocus.unfocus();
            }
          },
        child:MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'bu title edi',
        themeMode: ThemeMode.light,
        darkTheme: MyThemes.themeDark,
        theme: MyThemes.themeLight,
      home: child));
      },
       child: HomePage22(),
    );
  }
}
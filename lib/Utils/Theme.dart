import 'package:flutter/material.dart';
import 'colors.dart';

class MyThemes{
  static final themeLight = ThemeData(
        scaffoldBackgroundColor: myColors.C_FEFEFF,
        appBarTheme: AppBarTheme(color: Colors.blue),
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        textTheme: TextTheme(headline1: TextStyle(color: Colors.black)),
      );

  static final themeDark = ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
          backgroundColor: Colors.black
          ),
          backgroundColor: myColors.C_0D0D0D,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(headline1: TextStyle(color: Colors.white)),
        );
}
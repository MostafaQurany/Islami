import 'package:flutter/material.dart';

class MyThemeData{

  static const  Color primearyColorlight = Color(0xFF431AA1);
  static const  Color primearyColordarck = Color(0xFF141A2E);
  static const  Color yellow = Color(0xFFFACC1D);


  static ThemeData lighttheme = ThemeData(
    primaryColor: primearyColorlight,
    scaffoldBackgroundColor: Colors.white,

    textTheme: TextTheme(
      titleLarge:TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: primearyColorlight,
        fontFamily: 'Cairo'
      ) ,
      bodyLarge: TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 24,
        color: Colors.black26,
      ),

      headlineLarge: TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
    ),
  );


  

}
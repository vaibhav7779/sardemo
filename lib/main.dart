import 'package:flutter/material.dart';
import 'package:sar/pages/employment.dart';
import 'package:sar/pages/homePage.dart';
import 'package:sar/pages/income_verification.dart';

import 'package:sar/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IncomeVerification(),
      home: HomePage(),
      theme: ThemeData(
        // AppBar theme
        // primarySwatch: buildMaterialColor(Color(0xFFF7B61A)),
        primaryColor: Color(0xffF7B61A),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(247, 182, 26, 1),
            centerTitle: false),

// Elevated Button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(184, 28, 34, 1),
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),

// textformfield
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromRGBO(255, 31, 41, 1)),
        ),

// Text Button
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromRGBO(255, 31, 41, 1)),
        ),

// checkbox theme
        unselectedWidgetColor: const Color.fromRGBO(225, 31, 42, 1),
        checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          fillColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromRGBO(225, 31, 42, 1),
          ),
        ),

        // title and subtitle fontSize and color
        listTileTheme: const ListTileThemeData(
          // titleTextStyle: TextStyle(fontSize: 20),
          // subtitleTextStyle: TextStyle(fontSize: 14),
          textColor: Colors.black,
        ),

        // text box outline color
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(10, 18, 10, 18),
          filled: false,
          labelStyle: TextStyle(
            color: Color(0xFFBABABA),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        radioTheme: RadioThemeData(
          fillColor:
              MaterialStateColor.resolveWith((states) => Color(0xFFE11F2A)),
        ), //
// cursor color
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}

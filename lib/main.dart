import 'package:flutter/material.dart';
import 'package:sar/palette.dart';
import 'package:sar/pages/welcome.dart';

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
      home: const Welcome(),
      theme: ThemeData(
          // AppBar theme
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(247, 182, 26, 1),
              centerTitle: false),

// Elevated Button
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(184, 28, 34, 1),
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              side: const BorderSide(
                  width: 1, color: Color.fromRGBO(251, 25, 41, 1)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
            ),
          ),

          // checkbox
          unselectedWidgetColor: const Color.fromRGBO(225, 31, 42, 1),
          checkboxTheme: CheckboxThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              fillColor: MaterialStateColor.resolveWith(
                  (states) => const Color.fromRGBO(225, 31, 42, 1))),

          // title and subtitle fontSize and color
          listTileTheme: const ListTileThemeData(
              titleTextStyle: TextStyle(fontSize: 20),
              subtitleTextStyle: TextStyle(fontSize: 14),
              textColor: Colors.black),

          
          ),
    );
  }
}

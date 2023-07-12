import 'package:flutter/material.dart';
// import 'package:sar/palette.dart';
import 'package:sar/pages/addressConfirm.dart';

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
      home: const addressConfirm(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(247, 182, 26, 1),
            centerTitle: false),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith(
              (states) => Color.fromRGBO(251, 25, 41, 1)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(184, 28, 34, 1),
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            side: const BorderSide(
                width: 1, color: Color.fromRGBO(251, 25, 41, 1)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sar/pages/addAccount.dart';
// import 'package:sar/pages/login.dart';
// import 'package:sar/pages/basicInfo.dart';
//import 'package:sar/pages/loanSummary.dart';
import 'package:sar/pages/login.dart';
import 'package:sar/pages/welcome.dart';
// import 'package:sar/palette.dart';
// import 'package:sar/pages/addressConfirm.dart';
// import 'package:sar/pages/login.dart';
// import 'package:sar/pages/otp.dart';
// import 'package:sar/pages/otp.dart';
// import 'package:sar/utils/routes.dart';

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
      home: LoginPage(),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
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

// cursor color
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
    );
  }
}

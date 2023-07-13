import 'package:flutter/material.dart';
import 'package:sar/pages/loanSummary.dart';

class ThirdParty extends StatefulWidget {
  const ThirdParty({super.key});

  @override
  State<ThirdParty> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<ThirdParty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: new Image.asset(
            "assets/hd1.png",
            fit: BoxFit.cover,
            width: 500,
            height: 810,
          ),
        ),
      ]),
    ));
  }
}

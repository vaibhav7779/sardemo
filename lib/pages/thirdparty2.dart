import 'package:flutter/material.dart';
import 'package:sar/pages/loanSummary.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoanSummary(),
                ),
              );
            },
            child: new Image.asset(
              "assets/hdfcpage.png",
              fit: BoxFit.scaleDown,
              width: 500,
              height: 1100,
            ),
          ),
        ),
      ]),
    ));
  }
}

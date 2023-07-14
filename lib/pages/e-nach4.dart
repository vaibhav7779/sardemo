import 'package:flutter/material.dart';
import 'package:sar/pages/loanSummary.dart';

import 'approval.dart';

class Fourenach extends StatefulWidget {
  const Fourenach({super.key});

  @override
  State<Fourenach> createState() => _ThirdPartState();
}

class _ThirdPartState extends State<Fourenach> {
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
                  builder: (context) => Approval(),
                ),
              );
            },
            child: Image.asset(
              "assets/bankk.png",
              fit: BoxFit.cover,
              width: 480,
              height: 1110,
            ),
          ),
        ),
      ]),
    ));
  }
}

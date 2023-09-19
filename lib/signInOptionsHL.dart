import 'package:flutter/material.dart';
import 'package:sar/email.dart';
import 'package:sar/emailHL.dart';
import 'package:sar/otp.dart';
import 'package:sar/otpHL.dart';
// import 'package:sar/PL/emailLogin.dart';
// import 'package:sar/PL/smsLogin.dart';

class SignInOptionsHL extends StatefulWidget {
  const SignInOptionsHL({super.key});

  @override
  State<SignInOptionsHL> createState() => _SignInOptionsHLState();
}

class _SignInOptionsHLState extends State<SignInOptionsHL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          Icon(Icons.question_mark_rounded),
          SizedBox(width: 15)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EmailVerificationHL()));
                      },
                      child: const Text("Sign In via Email and Password"),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTPValidationHL()));
                      },
                      child: const Text("Sign In via Mobile OTP"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

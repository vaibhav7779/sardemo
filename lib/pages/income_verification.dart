import 'package:flutter/material.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class IncomeVerification extends StatefulWidget {
  const IncomeVerification({super.key});

  @override
  State<IncomeVerification> createState() => _IncomeVerificationState();
}

class _IncomeVerificationState extends State<IncomeVerification> {
  String? consent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Loan"),
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
              BreadCrumb(
                items: <BreadCrumbItem>[
                  BreadCrumbItem(
                    content: const Text(
                      "HOME",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  BreadCrumbItem(
                    content: const Text(
                      "PERSONAL LOANS",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  BreadCrumbItem(
                    content: const Text(
                      "APPLY",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
                divider: const Icon(Icons.chevron_right),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text("Income Verification"), Text("5/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 5,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 24),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Account Aggregator',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "Account Aggregator",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 66.0),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Use the account aggregator",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 66.0),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(100, 20),
                                foregroundColor: Colors.white,
                                backgroundColor: Color.fromRGBO(184, 28, 34, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                textStyle: const TextStyle(fontSize: 12)),
                            onPressed: () {},
                            child: const Text('Recommended'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Internet Banking',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "Internet Banking",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 66.0),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Verify via Internet Banking",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'E -Statements',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        leading: Radio(
                          value: "E-Statements",
                          groupValue: consent,
                          onChanged: (value) {
                            setState(() {
                              consent = value.toString();
                            });
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 66.0),
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            "Verify via Internet Banking",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                    "Note: By proceeding, you agree to be redirected to our third-party platform for verification."),
              ),
              const SizedBox(height: 60),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Next"),
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

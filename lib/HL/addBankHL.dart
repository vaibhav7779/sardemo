import 'package:flutter/material.dart';
import 'package:sar/HL/incomeVerification.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

bool isChecked = false;

class AddBank extends StatefulWidget {
  const AddBank({super.key});

  @override
  State<AddBank> createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  String selectBank = 'Select Bank';
  var itemsOccupation = [
    'Select Bank',
    'HDFC',
    'ICICI',
    'SBI',
    'Union Bank',
    'Axis Bank',
    'Bank of Baroda',
    'IDBI Bank',
    'Kotak Mahindra Bank'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Loan"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const <Widget>[
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Salary Account"), Text("4/11")],
              ),
              const SizedBox(height: 10),
              const StepProgressIndicator(
                totalSteps: 11,
                currentStep: 4,
                selectedColor: Color(0xFF45C00B),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Select tha bank of your salary account",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 20),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Choose bank',
                          labelStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(233, 122, 42, 1),
                          ),
                        ),
                        iconSize: 0.0,
                        dropdownColor: Colors.white,
                        value: selectBank,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectBank = newValue!;
                          });
                        },
                        items: itemsOccupation
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              // style: const TextStyle(fontSize: 16),
                            ),
                          );
                        }).toList(),
                      ),

                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "SUGGESTED BANKS",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // bank slection
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'HDFC';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'HDFC')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/hdfc.png'),
                                    ),
                                    const Text(
                                      "HDFC",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'ICICI';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'ICICI')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/icici.png'),
                                    ),
                                    const Text(
                                      "ICICI",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'SBI';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'SBI')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/sbi.png'),
                                    ),
                                    const Text(
                                      "SBI",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'Union Bank';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'Union Bank')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/union.png'),
                                    ),
                                    const Text(
                                      "Union Bank",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'Axis Bank';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'Axis Bank')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/axis.png'),
                                    ),
                                    const Text(
                                      "Axis Bank",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'Bank of Baroda';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'Bank of Baroda')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/bob.png'),
                                    ),
                                    const Text(
                                      "Bank of Ba..",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'IDBI Bank';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'IDBI Bank')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/idbi.png'),
                                    ),
                                    const Text(
                                      "IDBI Bank",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectBank = 'Kotak Mahindra Bank';
                              });
                            },
                            child: Card(
                              shape: (selectBank == 'Kotak Mahindra Bank')
                                  ? RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xffF7B61A), width: 4.0),
                                      borderRadius: BorderRadius.circular(10.0))
                                  : null,
                              elevation: 4,
                              child: SizedBox(
                                // height: 80,
                                width: 68,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset('assets/kotak.png'),
                                    ),
                                    const Text(
                                      "Kotak Ma...",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (selectBank == 'Select Bank')
                          ? null
                          : () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const IncomeVerification(),
                                  ));
                            },
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

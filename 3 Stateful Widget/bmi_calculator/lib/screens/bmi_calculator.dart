import 'package:flutter/material.dart';
import '../widgets/gender.dart';
import 'ResultPage.dart';
import '../widgets/age_weight.dart';
import '../widgets/height.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR",
            style: TextStyle(color: Color.fromARGB(255, 237, 233, 233))),
        backgroundColor: const Color.fromARGB(255, 33, 30, 86),
      ),
      backgroundColor: const Color.fromARGB(255, 33, 30, 86),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gender(),
          const Height(),
          const AgeWeight(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResultPage(),
                ),
              );
            },
            child: Container(
              color: const Color.fromARGB(255, 233, 30, 169),
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

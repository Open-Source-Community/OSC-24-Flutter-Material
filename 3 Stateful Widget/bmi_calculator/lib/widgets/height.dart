import 'package:flutter/material.dart';

double _value = 150.9;

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 24, 27, 55),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const Text(
              "HEIGHT",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              "$_value",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 45,
              ),
            ),
            Slider(
              min: 120,
              max: 220,
              activeColor: Colors.white,
              inactiveColor: Colors.white24,
              thumbColor: const Color.fromARGB(255, 233, 30, 169),
              value: _value,
              onChanged: (double value) {
                setState(() {
                  _value = value.roundToDouble();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

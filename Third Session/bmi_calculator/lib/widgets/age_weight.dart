import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';
import '../widgets/reuse_icon_button.dart';

class AgeWeight extends StatefulWidget {
  const AgeWeight({super.key});

  @override
  State<AgeWeight> createState() => _AgeWeightState();
}

class _AgeWeightState extends State<AgeWeight> {
  int weight = 120;
  int age = 5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: CustomCard(
        color: const Color.fromARGB(255, 24, 27, 55),
        child: Column(
          children: [
            const Text(
              "WEIGHT",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Text(
              "$weight",
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 35,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReuseIconButton(
                  icon: Icons.remove,
                  onPressed: () {
                    setState(
                      () {
                        if (weight <= 120 && weight > 50) {
                          weight--;
                        }
                      },
                    );
                  },
                ),
                ReuseIconButton(
                  icon: Icons.add,
                  onPressed: () {
                    setState(
                      () {
                        if (weight < 120 && weight >= 50) {
                          weight++;
                        }
                      },
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

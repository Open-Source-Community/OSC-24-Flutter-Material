import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

import 'icon_text.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

enum Type {
  male,
  female,
}

class _GenderState extends State<Gender> {
  Type pressed = Type.female;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomCard(
              onTap: () {
                setState(() {
                  pressed = Type.male;
                });
              },
              color: pressed == Type.male
                  ? const Color.fromARGB(255, 43, 47, 79)
                  : const Color.fromARGB(255, 24, 27, 55),
              child: const IconText(
                icon: Icons.male,
                data: "MALE",
              ),
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: CustomCard(
              onTap: () {
                setState(() {
                  pressed = Type.female;
                });
              },
              color: pressed == Type.female
                  ? const Color.fromARGB(255, 43, 47, 79)
                  : const Color.fromARGB(255, 24, 27, 55),
              child: const IconText(
                icon: Icons.female,
                data: "FEMALE",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

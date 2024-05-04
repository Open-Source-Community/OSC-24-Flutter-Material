import 'package:flutter/material.dart';

class NoNotes extends StatelessWidget {
  const NoNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/rafiki.png"),
          const Text(
            "Create your first note !",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Rubik",
            ),
          ),
        ],
      ),
    );
  }
}

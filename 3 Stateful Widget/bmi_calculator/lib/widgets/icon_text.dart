import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.icon,
    required this.data,
  });
  final IconData icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 90,
          color: Colors.grey,
        ),
        Text(
          data,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

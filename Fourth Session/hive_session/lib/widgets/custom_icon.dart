import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 23,
      color: Colors.white,
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}

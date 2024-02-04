import 'package:flutter/material.dart';

class ReuseIconButton extends StatelessWidget {
  const ReuseIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });
  final void Function()? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 25,
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey,
        shape: CircleBorder(),
      ),
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}

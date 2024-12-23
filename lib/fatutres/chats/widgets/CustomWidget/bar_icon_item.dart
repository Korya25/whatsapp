import 'package:flutter/material.dart';

class BarIconItem extends StatelessWidget {
  const BarIconItem({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconColor = Colors.white,
    this.iconSize = 23,
  });
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, // Function called on press
      icon: Icon(
        icon, // Icon for more options
        color: iconColor, // Customizable icon color
        size: iconSize, // Customizable icon size
      ),
    );
  }
}

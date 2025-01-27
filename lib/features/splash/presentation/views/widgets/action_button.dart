import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  final bool showIcon;
  final VoidCallback onPressed;

  const ActionButton({
    required this.label,
    required this.color,
    required this.textColor,
    this.showIcon = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(size.width * 0.4, size.height * 0.06),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showIcon)
            const Icon(Icons.add, color: Colors.white, size: 18),
          if (showIcon)
            const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
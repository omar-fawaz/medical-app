import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';

class TabButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final bool showDot;

  const TabButton({
    required this.label,
    required this.isActive,
    this.showDot = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? AppStyles.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              color: isActive ? Colors.white : Colors.black,
            ),
          ),
          if (showDot)
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Icon(
                Icons.circle,
                size: 8,
                color: Colors.red,
              ),
            ),
        ],
      ),
    );
  }
}
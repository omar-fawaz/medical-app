// add_report_button.dart
import 'package:flutter/material.dart';

class AddReportButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddReportButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: const Icon(Icons.add, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
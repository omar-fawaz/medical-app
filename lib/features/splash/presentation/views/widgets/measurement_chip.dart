import 'package:flutter/material.dart';

class MeasurementChip extends StatelessWidget {
  final String label;
  final VoidCallback onDeleted;

  const MeasurementChip({super.key,
    required this.label,
    required this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      onDeleted: onDeleted,
      backgroundColor: Colors.teal[100],
    );
  }
}
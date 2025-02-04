// date_picker_field.dart
import 'package:flutter/material.dart';

class DatePickerFieldRepots extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onTap;

  const DatePickerFieldRepots({
    super.key,
    required this.selectedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          hintText: "${selectedDate.day} . ${selectedDate.month} . ${selectedDate.year}",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          prefixIcon: IconButton(
            icon: const Icon(Icons.calendar_today, color: Colors.black),
            onPressed: onTap,
          ),
        ),
      ),
    );
  }
}
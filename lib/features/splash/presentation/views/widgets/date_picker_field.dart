// date_picker_field.dart
import 'package:flutter/material.dart';

class DatePickerField extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onTap;
  final String hintText;
  final IconData prefixIcon;

  const DatePickerField({
    super.key,
    required this.selectedDate,
    required this.onTap,
    this.hintText = "Select Date",
    this.prefixIcon = Icons.calendar_today,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      controller: TextEditingController(text: "${selectedDate.day} . ${selectedDate.month} . ${selectedDate.year}"),
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: IconButton(
          icon: Icon(prefixIcon, color: Colors.black),
          onPressed: onTap,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
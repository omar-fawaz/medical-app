// note_section.dart
import 'package:flutter/material.dart';

class NoteSection extends StatelessWidget {
  const NoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Note",
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            "Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
// confirmation_icon.dart
import 'package:flutter/material.dart';

class ConfirmationIcon extends StatelessWidget {
  const ConfirmationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.check_circle,
          size: 100,
          color: Colors.white,
        ),
        const SizedBox(height: 20),
        Center(
          child: const Text(
            "Your attendance has been registered",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
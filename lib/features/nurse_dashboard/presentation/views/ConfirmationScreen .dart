// confirmation_screen.dart
import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/AttendanceScreen%20.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/confirmation_icon.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/next_button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Confirmation Icon and Text
          const ConfirmationIcon(),
          const Spacer(),
          // Next Button
          NextButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AttendanceScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
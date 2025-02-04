import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';

class CallCard extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onBusy;

  const CallCard({
    super.key,
    required this.onAccept,
    required this.onBusy, required Null Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Patient Name
          Row(
            children: [
              Icon(Icons.person, color: AppStyles.primaryColor, size: 24),
              const SizedBox(width: 8),
              Text("Ebrahem Khaled", style: AppStyles.boldTextStyle),
            ],
          ),
          const SizedBox(height: 8),

          // Doctor Name
          Row(
            children: [
              Icon(Icons.medical_services, color: AppStyles.primaryColor, size: 24),
              const SizedBox(width: 8),
              Text("Dr. Salma Ali", style: AppStyles.bodyTextStyle),
            ],
          ),
          const SizedBox(height: 8),

          // Date
          Row(
            children: [
              Icon(Icons.calendar_today, color: AppStyles.primaryColor, size: 24),
              const SizedBox(width: 8),
              Text("24 . 04 . 2021", style: AppStyles.bodyTextStyle),
            ],
          ),
          const SizedBox(height: 12),

          // Accept and Busy Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                ),
                onPressed: onAccept,
                child: const Text("✅ Accept", style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                ),
                onPressed: onBusy,
                child: const Text("❌ Busy", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

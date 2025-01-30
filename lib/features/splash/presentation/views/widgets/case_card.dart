import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';

class CaseCard extends StatelessWidget {
  final VoidCallback onPressed;

  const CaseCard({super.key, required this.onPressed});

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
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person, color: AppStyles.primaryColor, size: 24),
              SizedBox(width: 8),
              Text("Ebrahem Khaled", style: AppStyles.boldTextStyle),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today, color: AppStyles.primaryColor, size: 24),
              SizedBox(width: 8),
              Text("24 . 04 . 2021", style: AppStyles.bodyTextStyle),
            ],
          ),
          SizedBox(height: 12),
          Center(
            child: SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyles.primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
                onPressed: onPressed, // Use the callback here
                child: Text(
                  "Show Details",
                  style: TextStyle(fontSize: 14, color: AppStyles.buttonTextColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
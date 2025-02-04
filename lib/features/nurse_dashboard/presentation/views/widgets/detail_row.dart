import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';

class DetailRow extends StatelessWidget {
  final String label;
  final String value;
  final IconData? icon;

  const DetailRow({
    required this.label,
    required this.value,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppStyles.boldTextStyle),
          Row(
            children: [
              Text(value, style: AppStyles.bodyTextStyle),
              if (icon != null) ...[
                const SizedBox(width: 5),
                Icon(icon, size: 16, color: Colors.orange),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
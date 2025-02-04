import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/splash/presentation/views/call_view.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/detail_row.dart';

class CaseDetailsView extends StatelessWidget {
  const CaseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Case Details', style: AppStyles.titleStyle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Use Navigator.pop to go back to the previous screen
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: size.height * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Case details
            DetailRow(label: 'Patient Name', value: 'Ebrahem Khaled'),
            const SizedBox(height: 10),
            DetailRow(label: 'Age', value: '24 years'),
            const SizedBox(height: 10),
            DetailRow(label: 'Phone Number', value: '254110241423'),
            const SizedBox(height: 10),
            DetailRow(label: 'Date', value: '24.04.2021'),
            const SizedBox(height: 10),
            DetailRow(label: 'Doctor', value: 'Salma Ahmed'),
            const SizedBox(height: 10),
            DetailRow(label: 'Nurse', value: 'Ali Islam'),
            const SizedBox(height: 10),
            DetailRow(
              label: 'Status',
              value: 'Process',
              icon: Icons.access_time,
            ),
            const SizedBox(height: 20),

            // Case Description
            const Text(
              'Case Description',
              style: AppStyles.boldTextStyle,
            ),
            const SizedBox(height: 5),
            const Text(
              'Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s.',
              style: AppStyles.bodyTextStyle,
            ),
            const Spacer(),

            // Call Doctor Button
            ElevatedButton(
              onPressed: () {
                // Navigate to the Call() screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Call(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                minimumSize: Size(double.infinity, size.height * 0.07),
              ),
              child: const Text(
                'Call doctor',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/splash/presentation/views/nurse_view.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/action_button.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/detail_row.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/request_popup.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/tab_button.dart';

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
          onPressed: () {},
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
            // Tabs
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TabButton(label: 'Case', isActive: true),
                  const SizedBox(width: 10),
                  TabButton(label: 'Medical record', isActive: false),
                  const SizedBox(width: 10),
                  TabButton(
                      label: 'Medical measurement',
                      isActive: false,
                      showDot: true),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Case details
            DetailRow(label: 'Patient Name', value: 'Ebrahem Khaled'),
            DetailRow(label: 'Age', value: '24 years'),
            DetailRow(label: 'Phone Number', value: '254110241423'),
            DetailRow(label: 'Date', value: '24.04.2021'),
            DetailRow(label: 'Doctor', value: 'Salma Ahmed'),
            DetailRow(label: 'Nurse', value: 'Ali Islam'),
            DetailRow(
                label: 'Status', value: 'Process', icon: Icons.access_time),
            const SizedBox(height: 10),
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

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  label: 'Add Nurse',
                  color: Colors.teal,
                  textColor: Colors.white,
                  showIcon: true,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NurseSelectionScreen()),
                    );
                  },
                ),
                ActionButton(
                  label: 'Request',
                  color: Colors.teal,
                  textColor: Colors.white,
                  showIcon: true,
                  onPressed: () => _showRequestPopup(context),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, size.height * 0.07),
              ),
              child: const Text(
                'End Case',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showRequestPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return MedicalOptions();
      },
    );
  }
}

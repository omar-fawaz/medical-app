// attendance_screen.dart
import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/ConfirmationScreen%20.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/DashboardView.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/attendance_card.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/note_section.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/profile_section.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboardView(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            const ProfileSection(),
            const SizedBox(height: 20),

            // Note Section
            const NoteSection(),
            const SizedBox(height: 20),

            // Attendance and Leaving Cards
            AttendanceCard(
              title: "Attendance",
              time: "09 : 00 am",
              statusIcon: Icons.check_circle,
              statusColor: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfirmationScreen()),
                );
              },
            ),
            const SizedBox(height: 10),
            AttendanceCard(
              title: "Leaving",
              time: "04 : 00 pm",
              statusIcon: Icons.cancel,
              statusColor: Colors.red,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ConfirmationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
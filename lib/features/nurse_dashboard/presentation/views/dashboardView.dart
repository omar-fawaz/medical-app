// dashboard_view.dart
import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/AttendanceScreen%20.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/ReportsView.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/TaskScreenView.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/call_view.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/case_details_view.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/cases_card.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/grid_item.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {
              // Handle notification press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profile.jpg"), // Replace with actual image
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Salma Ali",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Specialist , Nurse",
                      style: TextStyle(fontSize: 14, color: Colors.green[600]),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Grid Section (Calls, Tasks, Reports, Attendance)
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.2,
                children: [
                  GridItem(
                    icon: Icons.person_add_alt,
                    label: "Calls",
                    color: Colors.blue,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Call(),
                        ),
                      );
                    },
                  ),
                  GridItem(
                    icon: Icons.task,
                    label: "Tasks",
                    color: Colors.green,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TaskScreen(),
                        ),
                      );
                    },
                  ),
                  GridItem(
                    icon: Icons.article,
                    label: "Reports",
                    color: Colors.purple,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReportsView(),
                        ),
                      );
                    },
                  ),
                  GridItem(
                    icon: Icons.fingerprint,
                    label: "attendance - leaving",
                    color: Colors.cyan,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AttendanceScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Full-Width "Cases" Card
            CasesCard(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CaseDetailsView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
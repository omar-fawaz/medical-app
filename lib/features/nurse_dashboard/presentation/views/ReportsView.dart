// reports_view.dart
import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/add_report_button.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/date_picker_field_repots.dart';
import 'package:medical_app/features/nurse_dashboard/presentation/views/widgets/report_card.dart';

class ReportsView extends StatefulWidget {
  const ReportsView({super.key});

  @override
  _ReportsViewState createState() => _ReportsViewState();
}

class _ReportsViewState extends State<ReportsView> {
  DateTime selectedDate = DateTime.now();

  // Function to pick a date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Date Picker & Add Button
            Row(
              children: [
                DatePickerFieldRepots(
                  selectedDate: selectedDate,
                  onTap: () => _selectDate(context),
                ),
                const SizedBox(width: 10),
                AddReportButton(
                  onPressed: () {
                    // Handle Add Report Action
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // List of Reports
            Expanded(
              child: ListView.builder(
                itemCount: 6, // Example: 6 reports
                itemBuilder: (context, index) {
                  bool isFinished = index.isEven; // Alternate status for reports
                  return ReportCard(
                    reportName: "Report Name",
                    date: selectedDate,
                    isFinished: isFinished,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
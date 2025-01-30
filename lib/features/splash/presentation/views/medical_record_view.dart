import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/add_measurement_button.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/measurement_chip.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/send_button.dart';

class MedicalRecordView extends StatefulWidget {
  const MedicalRecordView({super.key});

  @override
  _MedicalRecordViewState createState() => _MedicalRecordViewState();
}

class _MedicalRecordViewState extends State<MedicalRecordView> {
  // List of measurements
  List<String> measurements = ["SGOT,SGPT", "ESR", "Lipid profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Record', style: AppStyles.titleStyle),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); // Close the screen
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: AppStyles.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Measurement Chips
            Wrap(
              spacing: 8.0,
              children: measurements.map((measurement) {
                return MeasurementChip(
                  label: measurement,
                  onDeleted: () {
                    setState(() {
                      measurements.remove(measurement);
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),

            // Add Measurement Button
            Row(
              children: [
                Expanded(
                  child: AddMeasurementButton(
                    onPressed: () {
                      setState(() {
                        measurements.add("New Measurement");
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),

            // Add Note Field
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Add Note",
                border: OutlineInputBorder(),
              ),
            ),
            const Spacer(),

            // Send Button
            SendButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data sent successfully!")),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
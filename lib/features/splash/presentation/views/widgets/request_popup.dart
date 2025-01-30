import 'package:flutter/material.dart';
import 'package:medical_app/features/splash/presentation/views/medical_measurement_view.dart';
import 'package:medical_app/features/splash/presentation/views/medical_record_view.dart';

class MedicalOptions extends StatefulWidget {
  const MedicalOptions({Key? key}) : super(key: key);

  @override
  State<MedicalOptions> createState() => _MedicalOptionsState();
}

class _MedicalOptionsState extends State<MedicalOptions>
    with SingleTickerProviderStateMixin {
  int? selectedOption;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void selectOption(int index) {
    if (mounted) {
      setState(() {
        selectedOption = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: _buildOption(
                    index: 0,
                    title: 'Medical record',
                    icon: Icons.description_outlined,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _buildOption(
                    index: 1,
                    title: 'Medical measurement',
                    icon: Icons.check_circle_outline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedOption != null) {
                    if (selectedOption == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MedicalRecordView()),
                      );
                    } else if (selectedOption == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MedicalMeasurementView()),
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1FD4AF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption({
    required int index,
    required String title,
    required IconData icon,
  }) {
    return InkWell(
      onTap: () => selectOption(index),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedOption == index ? Colors.teal : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}

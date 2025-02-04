// task_screen.dart
import 'package:flutter/material.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/date_picker_field.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/task_card.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  DateTime selectedDate = DateTime(2021, 4, 24);

  List<Map<String, dynamic>> tasks = [
    {"name": "Task Name", "date": "24 . 04 . 2021", "status": "Finished"},
    {"name": "Task Name", "date": "24 . 04 . 2021", "status": "Process"},
    {"name": "Task Name", "date": "24 . 04 . 2021", "status": "Finished"},
    {"name": "Task Name", "date": "24 . 04 . 2021", "status": "Process"},
    {"name": "Task Name", "date": "24 . 04 . 2021", "status": "Finished"},
  ];

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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Tasks",
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Date Picker
            DatePickerField(
              selectedDate: selectedDate,
              onTap: () => _selectDate(context),
            ),
            const SizedBox(height: 20),

            // Task List
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  var task = tasks[index];
                  return TaskCard(task: task);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
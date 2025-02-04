// task_card.dart
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Map<String, dynamic> task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: const Icon(Icons.check_box, color: Colors.teal),
        title: Text(
          task['name'],
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
            const SizedBox(width: 5),
            Text(
              task['date'],
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: task['status'] == "Finished" ? Colors.green[100] : Colors.orange[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            task['status'],
            style: TextStyle(
              color: task['status'] == "Finished" ? Colors.green : Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
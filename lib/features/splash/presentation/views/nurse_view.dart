import 'package:flutter/material.dart';

class NurseSelectionScreen extends StatefulWidget {
  const NurseSelectionScreen({Key? key}) : super(key: key);

  @override
  State<NurseSelectionScreen> createState() => _NurseSelectionScreenState();
}

class _NurseSelectionScreenState extends State<NurseSelectionScreen> {
  int? selectedNurseIndex;
  String searchQuery = '';

  final List<Map<String, String>> nurses = [
    {
      'name': 'Salma Ahmed',
      'speciality': 'Specialist - Nurse',
      'status': 'online',
    },
    {
      'name': 'Helmy Fadi',
      'speciality': 'Specialist - Nurse',
      'status': 'online',
    },
    {
      'name': 'Shawky Haleem',
      'speciality': 'Specialist - Nurse',
      'status': 'offline',
    },
    {
      'name': 'Sara Mahmoud',
      'speciality': 'Specialist - Nurse',
      'status': 'online',
    },
    {
      'name': 'Ali Ahmed',
      'speciality': 'Specialist - Nurse',
      'status': 'away',
    },
    {
      'name': 'Hend Ali',
      'speciality': 'Specialist - Nurse',
      'status': 'away',
    },
  ];

  List<Map<String, String>> get filteredNurses {
    return nurses.where((nurse) {
      return nurse['name']!.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Select Nurse',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Search Bar
              TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search for Nurse',
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              // Nurse List
              Expanded(
                child: ListView.builder(
                  itemCount: filteredNurses.length,
                  itemBuilder: (context, index) {
                    final nurse = filteredNurses[index];
                    bool isSelected = selectedNurseIndex == index;
                    
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedNurseIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue[100],
                              child: Icon(
                                Icons.person,
                                color: Colors.blue[300],
                              ),
                            ),
                            const SizedBox(width: 12),
                            
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    nurse['name']!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    nurse['speciality']!,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: nurse['status'] == 'online'
                                    ? Colors.green
                                    : nurse['status'] == 'away'
                                        ? Colors.orange
                                        : Colors.grey,
                              ),
                            ),
                            
                            if (isSelected)
                              Container(
                                margin: const EdgeInsets.only(left: 8),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal[400],
                                ),
                                child: const Icon(
                                  Icons.check,
                                  size: 14,
                                  color: Colors.white,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              // Select Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: selectedNurseIndex != null
                      ? () {
                          Navigator.pop(context, filteredNurses[selectedNurseIndex!]);
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1FD4AF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Select Nurse',
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
      ),
    );
  }
}
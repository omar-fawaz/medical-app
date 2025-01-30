import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/nurse_item.dart';

class NurseSelectionView extends StatefulWidget {
  const NurseSelectionView({super.key});

  @override
  State<NurseSelectionView> createState() => _NurseSelectionViewState();
}

class _NurseSelectionViewState extends State<NurseSelectionView> {
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
          style: AppStyles.titleStyle,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppStyles.defaultPadding,
          child: Column(
            children: [
              // Search TextField instead of SearchBar
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

                    return NurseItem(
                      name: nurse['name']!,
                      speciality: nurse['speciality']!,
                      status: nurse['status']!,
                      isSelected: isSelected,
                      onTap: () {
                        setState(() {
                          selectedNurseIndex = index;
                        });
                      },
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
                          Navigator.pop(
                              context, filteredNurses[selectedNurseIndex!]);
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppStyles.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Select Nurse',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
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
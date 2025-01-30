import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/splash/presentation/views/case_details_view.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/case_card.dart';

class CasesView extends StatelessWidget {
  const CasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text("Cases", style: AppStyles.titleStyle),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: AppStyles.defaultPadding,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: CaseCard(
                onPressed: () {
                  // Navigate to CaseDetailsView
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CaseDetailsView(),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
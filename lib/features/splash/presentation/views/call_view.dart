import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/splash/presentation/views/DashboardView.dart';
import 'package:medical_app/features/splash/presentation/views/case_details_view.dart';
import 'package:medical_app/features/splash/presentation/views/widgets/call_card.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardView(),
                    ),
                  ); // Go back when the back button is pressed
          },
        ),
        title: Text("Call", style: AppStyles.titleStyle),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: AppStyles.defaultPadding,
        child: ListView.builder(
          itemCount: 3, // Example item count
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: CallCard(
                onAccept: () {
                  // Navigate to CaseDetailsView when "Accept" is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CaseDetailsView(),
                    ),
                  );
                },
                onBusy: () {
                  // Navigate to CaseDetailsView when "Busy" is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CaseDetailsView(),
                    ),
                  );
                },
                onPressed: () {
                  // Navigate to CaseDetailsView when "View Details" is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CaseDetailsView(),
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

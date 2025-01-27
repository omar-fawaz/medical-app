import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/theme_manager.dart';
import 'package:medical_app/features/splash/presentation/views/case_details_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Medical App',
      theme: ThemeManager.getAppTheme(),
      home: CaseDetailsView(),
    );
  }
}



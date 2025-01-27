
import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/theme_manager.dart';
import 'package:medical_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
      const MyApp(),
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Medical App',
      theme: ThemeManager.getAppTheme(),
      home: SplashView(),
    );
  }
}



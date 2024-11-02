import 'package:buga/core/theme/light_theme.dart';
import 'package:buga/features/authentication/presentation/pages/signup_page.dart';
import 'package:buga/features/authentication/presentation/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buga',
      theme: lighMode,
      home: const WelcomeScreen(),
    );
  }
}

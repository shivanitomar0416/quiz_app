import 'package:flutter/material.dart';
import 'package:quize_webapp/presentation/auth/welcome_screen.dart';
import 'package:quize_webapp/presentation/quiz/quiz_details_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Bowl',
      home: WelcomeScreen(),
    );
  }
}


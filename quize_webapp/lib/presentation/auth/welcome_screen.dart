import 'package:flutter/material.dart';
import 'package:quize_webapp/presentation/auth/widgets/welcome_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_screen_background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child:const WelcomeContainer() ,
      ),
    );
  }
}

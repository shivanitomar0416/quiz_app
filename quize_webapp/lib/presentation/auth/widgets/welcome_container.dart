import 'package:flutter/material.dart';
import 'package:quize_webapp/presentation/auth/login_screen.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 600;
          final cardWidth = isSmallScreen ? constraints.maxWidth * 0.9 : 600.0;

          return Container(
            width: cardWidth,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 2
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 15,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: isSmallScreen ? 24 : 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height:5),
                Text(
                  'The Quiz Bowl Challenge',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 28 : 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'at FESTLA',
                  style: TextStyle(
                    fontSize: isSmallScreen ? 20 : 24,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Test your knowledge and compete to be the top contender.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 16 : 18,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 12),

                Text(
                  'Ready to dive in?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 16 : 18,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 4),

                Text(
                  'Log in to begin the challenge!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isSmallScreen ? 16 : 18,
                    color: Colors.black54,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: isSmallScreen ? double.infinity : 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4169E1),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Login to Start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

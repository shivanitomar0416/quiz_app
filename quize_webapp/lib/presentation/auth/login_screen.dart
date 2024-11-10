import 'package:flutter/material.dart';
import 'package:quize_webapp/presentation/quiz/quiz_details_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _participantController = TextEditingController();
  final _teamController = TextEditingController();
  final _testCodeController = TextEditingController();

  @override
  void dispose() {
    _participantController.dispose();
    _teamController.dispose();
    _testCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFF0F0FF),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 900;

          return SingleChildScrollView(
            child: SizedBox(
              height: constraints.maxHeight,
              //  padding: const EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: isSmallScreen ? 2 : 1,
                          child: Container(
                            color: Colors.grey[100],
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 // const SizedBox(height: 40),
                                  Text(
                                    'Welcome to',
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 24 : 32,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Quiz Bowl Challenge',
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 24 : 32,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    'Login to start quiz',
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 16 : 20,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  const SizedBox(height: 48),
                                  Form(
                                    key: _formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        buildInputField(
                                          'Participant Name',
                                          _participantController,
                                        ),
                                        const SizedBox(height: 15),
                                        buildInputField(
                                          'Team Name',
                                          _teamController,
                                        ),
                                        const SizedBox(height: 15),
                                        buildInputField(
                                          'Test Code',
                                          _testCodeController,
                                        ),
                                        const SizedBox(height: 15),
                                        SizedBox(
                                          width: 130,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // if (_formKey.currentState!
                                              //     .validate()) {
                                              //   // Handle login logic
                                              // }
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizDetailsScreen()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xFF4169E1),
                                              padding: const EdgeInsets.symmetric(
                                                vertical: 16,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: const Text(
                                              'LOGIN',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        if (!isSmallScreen)
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/login.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: double.infinity,
                              height: constraints.maxHeight,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildInputField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            
              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFF4169E1),
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }
}

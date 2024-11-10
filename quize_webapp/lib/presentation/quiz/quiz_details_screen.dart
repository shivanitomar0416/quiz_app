import 'package:flutter/material.dart';
import 'package:quize_webapp/presentation/quiz/quiz_rounds_screen.dart';
import 'package:quize_webapp/presentation/quiz/widgets/quiz_info_shimmer_loader.dart';
import 'package:quize_webapp/presentation/quiz/widgets/rules_and_info.dart';

class QuizDetailsScreen extends StatefulWidget {
  const QuizDetailsScreen({super.key});

  @override
  State<QuizDetailsScreen> createState() => _QuizDetailsScreenState();
}

class _QuizDetailsScreenState extends State<QuizDetailsScreen> {
  bool choose=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = constraints.maxWidth < 600;
          return Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: isSmallScreen ? constraints.maxWidth * 0.4 : 300,
                      color: const Color(0xFFF0F0FF),
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Quiz Bowl Challenge',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 32),
                          
                          buildDetailSection('Participant Name', 'Abhay Bisht'),
                          const SizedBox(height: 24),
                          
                          buildDetailSection('Team name', 'Conqueror 101'),
                          const SizedBox(height: 24),
                          
                          const Text(
                            'Members',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text('Abhay Bisht'),
                          const Text('Shivani Tomar'),
                          const SizedBox(height: 24),
                          
                          buildDetailSection('Duration', '60 mins'),
                          const SizedBox(height: 24),
                          
                          buildDetailSection('Timing', '11:00 AM - 01:00 PM'),
                        ],
                      ),
                    ),
                    
                    //rules and info
                    //RulesAndInfo()
                    choose?const RulesAndInfo():const QuizRounds(),
                  ],
                ),
              ),
              
              // Bottom Bar
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          choose=false;
                        });
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Start Test'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Row(
                      children: [
                        const Icon(Icons.refresh, size: 16),
                        const SizedBox(width: 8),
                        Text(
                          'Test will start soon',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                                            onPressed: () {
                                              // if (_formKey.currentState!
                                              //     .validate()) {
                                              //   // Handle login logic
                                              // }
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizDetailsScreen()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                   Colors.white,
                                              padding: const EdgeInsets.symmetric(
                                                vertical: 5,
                                                horizontal: 24
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                    side:  BorderSide(
        color: Colors.black.withOpacity(0.8), 
        width: 1, 
      ),
                                                    
                                              ),
                                            ),
                                            child:  Text(
                                              'Logout',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black.withOpacity(0.8),
                                              ),
                                            ),
                                          )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildDetailSection(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
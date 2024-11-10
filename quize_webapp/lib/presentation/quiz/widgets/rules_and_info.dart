import 'package:flutter/material.dart';
import 'package:quize_webapp/presentation/quiz/widgets/quiz_info_shimmer_loader.dart';

class RulesAndInfo extends StatelessWidget {
  const RulesAndInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                      child: Container(
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rules and Regulations',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 24),
                              QuizInfoShimmerLoader(),
                            
                            ],
                          ),
                        ),
                      ),
                    );
  }
}
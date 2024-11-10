import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class QuizInfoShimmerLoader extends StatelessWidget {
  const QuizInfoShimmerLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
           ...List.generate(
                                5,
                                (index) => Container(
                                  margin: const EdgeInsets.only(bottom: 16),
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
        ],
      ),
    );
  }
}
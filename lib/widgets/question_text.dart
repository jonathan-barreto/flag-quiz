import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        'Which country does this flag belong to?',
        style: TextStyle(
          fontSize: 25,
          color: Color(0xFF2B2D42),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

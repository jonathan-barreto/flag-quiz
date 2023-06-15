import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz/controller/country_controller.dart';

class FinalScreen extends StatelessWidget {
  final CountryController countryController;

  const FinalScreen({
    super.key,
    required this.countryController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Your results',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '${countryController.trueResults.length}/5',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Image.asset(
          countryController.trueResults.length <= 2
              ? 'assets/sad.png'
              : 'assets/happy.png',
        ),
        ElevatedButton(
          onPressed: () {
            countryController.clear();
            Navigator.of(context).pushReplacementNamed('/quiz');
          },
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(
              Color(0xFF2B2D42),
            ),
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: const Text(
            'RESTART',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            SystemNavigator.pop();
          },
          child: const Text(
            'ABOUT',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ],
    );
  }
}

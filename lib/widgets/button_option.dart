import 'package:flutter/material.dart';
import 'package:quiz/controller/country_controller.dart';

class ButtonOption extends StatelessWidget {
  final String countryName;
  final String countrySort;
  final CountryController countryController;

  const ButtonOption({
    super.key,
    required this.countryName,
    required this.countrySort,
    required this.countryController,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        countryController.addResults(countryName, countrySort);
      },
      style: const ButtonStyle(
        fixedSize: MaterialStatePropertyAll(Size(300, 56)),
        backgroundColor: MaterialStatePropertyAll(Colors.white),
      ),
      child: Text(
        countryName,
        style: const TextStyle(
          color: Color(0xFF2B2D42),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

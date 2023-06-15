import 'package:flutter/material.dart';
import 'package:quiz/controller/country_controller.dart';
import 'package:quiz/widgets/button_option.dart';

class AllOptionsButtons extends StatelessWidget {
  final CountryController countryController;

  const AllOptionsButtons({
    super.key,
    required this.countryController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF2B2D42),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: countryController.countries?.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: ButtonOption(
                    countryName: countryController.countries![index],
                    countrySort: countryController.countryData!.countryName,
                    countryController: countryController,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

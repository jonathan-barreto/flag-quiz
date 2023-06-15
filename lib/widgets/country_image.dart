import 'package:flutter/material.dart';

class CountryImage extends StatelessWidget {
  final String countryImage;

  const CountryImage({super.key, required this.countryImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFF2B2D42),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 200,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network('http://192.168.0.106/api/images/$countryImage'),
          ),
        ),
      ),
    );
  }
}

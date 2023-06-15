import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('FlagQuiz'),
        centerTitle: true,
        backgroundColor: const Color(0xFF2B2D42),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              viewportFraction: 1,
            ),
            items: images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(i);
                },
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/quiz');
            },
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                Color(0xFF2B2D42),
              ),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: const Text(
              'GET STARTED',
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
          )
        ],
      ),
    );
  }
}

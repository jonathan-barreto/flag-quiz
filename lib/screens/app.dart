import 'package:flutter/material.dart';
import 'package:quiz/screens/Home/home_screen.dart';
import 'package:quiz/screens/Quiz/quiz_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/quiz': (context) => const QuizScreen(),
      },
    );
  }
}

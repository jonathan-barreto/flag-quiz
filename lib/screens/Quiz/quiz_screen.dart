import 'package:flutter/material.dart';
import 'package:quiz/controller/country_controller.dart';
import 'package:quiz/screens/FinalScreen/final_screen.dart';
import 'package:quiz/widgets/all_options_button.dart';
import 'package:quiz/widgets/country_image.dart';
import 'package:quiz/widgets/question_text.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  CountryController controller = CountryController();

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await controller.getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        title: const Text('FlagQuiz'),
        centerTitle: true,
        backgroundColor: const Color(0xFF2B2D42),
      ),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            if (controller.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (controller.newScreen) {
              return FinalScreen(countryController: controller);
            }
            return Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const QuestionText(),
                  CountryImage(
                    countryImage:
                        controller.countryQuiz!.countryData.countryImage,
                  ),
                  AllOptionsButtons(
                    countryController: controller,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

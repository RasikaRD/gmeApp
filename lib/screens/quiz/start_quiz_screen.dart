import 'package:flutter/material.dart';
import 'package:roll_dies/screens/quiz/question_screen.dart';

class StartQuizScreen extends StatefulWidget {
  const StartQuizScreen({super.key});

  static const routeName = '/quiz-start';

  @override
  State<StartQuizScreen> createState() => _StartQuizScreenState();
}

class _StartQuizScreenState extends State<StartQuizScreen> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = QuizeScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Game'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 75,
            ),
            SizedBox(
              height: 30,
            ),
            QuestionScreen(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

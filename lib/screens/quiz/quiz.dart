import 'package:flutter/material.dart';
import 'package:roll_dies/screens/quiz/start_quiz_screen.dart';

class QuizeScreen extends StatelessWidget {
  const QuizeScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  static const routeName = '/quize-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Game'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              height: 250,
              color: const Color.fromARGB(197, 238, 216, 247),
            ),
            const SizedBox(
              height: 75,
            ),
            const Text('Learn Flutter with fun!',
                style: TextStyle(fontSize: 24, color: Colors.white)),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.arrow_forward_outlined),
                onPressed: 
                  (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>const StartQuizScreen(),
                    ),
                  );
                },
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

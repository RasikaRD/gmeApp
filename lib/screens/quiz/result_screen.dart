import 'package:flutter/material.dart';
import 'package:roll_dies/data/dummy_quiz.dart';
import 'package:roll_dies/screens/quiz/start_quiz_screen.dart';
import './question_sumary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;


  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answers': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answers'] == data['correct_answer'];
    }).length;
    final numTotalQuestions = questions.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Answers'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.deepPurple,
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'You answered $numCorrectAnswers out of $numTotalQuestions question correctly!',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22, color: Color.fromARGB(200, 255, 255, 255))),
              ),
              const SizedBox(
                height: 20,
              ),
              QuestionSummary(
                summaryData,
                isCorrectAnswer: true,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const StartQuizScreen(),
                    ),
                  );
                },
                label: const Text('Restart Quiz'),
                icon: const Icon(Icons.refresh),
                style: TextButton.styleFrom(foregroundColor:  const Color.fromARGB(211, 250, 250, 250)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

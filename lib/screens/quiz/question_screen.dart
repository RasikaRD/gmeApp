import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_dies/data/dummy_quiz.dart';
import 'package:roll_dies/screens/quiz/result_screen.dart';
import 'package:roll_dies/widgets/answer_button_widget.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  final List<String> selectedAnswers = [];

  // void choosenAnswer(String answer) {
  //   selectedAnswers.add(answer);
  // }

  void answerQuestion(String answer) {
    selectedAnswers.add(answer);

    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex == questions.length) {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResultScreen(
                      chosenAnswers: selectedAnswers,
                    )),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                });
          }),

        ],
      ),
    );
  }
}

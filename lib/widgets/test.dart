

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:roll_dies/data/dummy_quiz.dart';
// import 'package:roll_dies/screens/quiz/result_screen.dart';


// class AnswerButton extends StatefulWidget {
//    AnswerButton({
//     super.key,
//     required this.answerText,
//     required this.onTap,
//   });

//   final String answerText;
//   final void Function() onTap;

//   @override
//   State<AnswerButton> createState() => _AnswerButtonState();
// }

// class _AnswerButtonState extends State<AnswerButton> {
//   // void selectedAnswer() {}
//   List<String> selectedAnswers = <String>[];

//   void chooseAnswer(String answerText) {
//     var selectedAnswer = answerText;
//     selectedAnswers.add(selectedAnswer);

//     if (selectedAnswers.length == questions.length) {
//       setState(() {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => ResultScreen(
//                     chosenAnswer: selectedAnswers,
//                   )),
//         );
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: TextButton(
//         onPressed: () {
//           chooseAnswer(widget.answerText);
//         },
//         style: OutlinedButton.styleFrom(
//           padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//           backgroundColor: Colors.black,
//           foregroundColor: Colors.white,
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//           ),
//         ),
//         child: Text(widget.answerText,
//             textAlign: TextAlign.center,
//             style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w300)),
//       ),
//     );
//   }
// }

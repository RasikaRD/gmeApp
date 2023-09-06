import 'package:flutter/material.dart';
import 'package:roll_dies/screens/rollDies/image_screen.dart';
import 'package:roll_dies/screens/quiz/quiz.dart';
import 'package:roll_dies/widgets/gradient_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ImageScreen(),
                    ));
                  },
                  child: const SizedBox(
                    child: GradientWidget(Color.fromARGB(255, 11, 28, 78),
                        Color.fromARGB(255, 68, 149, 187), 'Roll Dies'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>   QuizeScreen(() {
                        
                      }),
                    ));
                  },
                  child: const SizedBox(
                    child: GradientWidget(Color.fromARGB(255, 80, 9, 102),
                        Color.fromARGB(221, 46, 25, 102), 'Quize'),
                  ),
                ),
                InkWell(
                  onTap: () {
                  },
                  child: const SizedBox(
                    child: GradientWidget(Color.fromARGB(255, 49, 53, 49),
                        Color.fromARGB(221, 219, 58, 58), 'Box Puzzel'),
                  ),
                ),
              ],
            ),
          )
        ]);
  }
}

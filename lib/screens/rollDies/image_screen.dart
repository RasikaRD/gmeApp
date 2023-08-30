import 'package:flutter/material.dart';
import 'package:roll_dies/screens/rollDies/roll_dies_screen.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});
  static const routename = '/image-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roll Dies'),
        backgroundColor: Color.fromARGB(255, 3, 15, 54),
      ),
      body: const Center(child: RollDice()),
    );
  }
}

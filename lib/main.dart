import 'package:flutter/material.dart';
import 'package:roll_dies/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:const Color.fromARGB(255, 0, 0, 0),
        appBar: AppBar(
          title: const Text('GAMES'),
          backgroundColor: const Color.fromARGB(255, 15, 15, 14),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/question_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() {
    return _QuizzState();
  }
}

class _QuizzState extends State<Quizz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}

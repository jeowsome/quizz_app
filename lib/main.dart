import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 98),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

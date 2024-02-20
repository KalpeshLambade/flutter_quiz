import 'package:flutter/material.dart';
import 'package:quize/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 143, 10, 196),
              Color.fromARGB(255, 55, 55, 210),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: const Center(
            child: StartScreen(),
          ),
        ),
      ),
    ),
  );
}
// 
// 
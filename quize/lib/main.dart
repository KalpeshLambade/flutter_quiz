import 'package:flutter/material.dart';
import 'package:quize/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 143, 10, 196),
          Color.fromARGB(255, 55, 55, 210),
        ]),
      ),
    ),
  );
}

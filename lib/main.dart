import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 0, 191, 255),
            Color.fromARGB(255, 156, 230, 255),
          ],
        ),
      ),
    ),
  );
}

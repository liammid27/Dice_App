import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            const Color.fromARGB(255, 0, 191, 255),
            const Color.fromARGB(255, 156, 230, 255),
          ],
        ),
      ),
    ),
  );
}

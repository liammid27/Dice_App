import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colorList, {super.key});

  final List<Color> colorList;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    print('Rolling the dice...');
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorList[0],
            colorList[1],
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: const Color.fromARGB(255, 247, 255, 99),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text(
                'Roll Dice',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

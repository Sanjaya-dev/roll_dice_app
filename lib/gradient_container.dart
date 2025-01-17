import 'package:flutter/material.dart';
// import 'package:roll_dice_app/text_modifier.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.customColor1, this.customColor2, {super.key});

  final Color customColor1;
  final Color customColor2;
  void rollDice(){
    // .....
  }

  @override

  /// Builds a widget that displays a container with a linear gradient background
  /// and a text modifier child widget. The gradient starts from the top left
  /// corner and ends at the bottom right corner with specified colors.

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            customColor1,
            customColor2,
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
              'assets/images/dice-1.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice, 
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice')),
          ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class TextModifier extends StatelessWidget {
  const TextModifier(this.text,{super.key});

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          )),
    );
  }
}

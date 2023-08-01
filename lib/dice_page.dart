import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {




  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildDie('assets/images/dice1.png', roleDie1),

        buildDie('assets/images/dice5.png', roleDie2),

      ],
    );
  }


  void roleDie1() {

  }

  void roleDie2() {

  }

  Expanded buildDie(String imagePath, void Function() roleDie) {
    return Expanded(
      child: TextButton(
        onPressed: () => roleDie(),
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
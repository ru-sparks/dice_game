import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static const _imagePrefix = 'assets/images/';
  static  final _random = Random();

  var imagePath1 = '${_imagePrefix}dice1.png';

  var imagePath2 = '${_imagePrefix}dice1.png';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildDie(imagePath1),
        buildDie(imagePath2),
      ],
    );
  }


  void roleDie() {
    setState(() {
      var number = _random.nextInt(6) + 1;
      imagePath1 = '${_imagePrefix}dice$number.png';
      number = _random.nextInt(6) + 1;
      imagePath2 = '${_imagePrefix}dice$number.png';
    });
  }


  Expanded buildDie(String imagePath) {
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
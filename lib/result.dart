import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {super.key,
      required this.result,
      required this.isMale,
      required this.age,
      required this.name});

  final double result;
  final bool isMale;
  final int age;
  final String name;

  String get resultPhrase {
    String resultText;
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result >= 25 && result < 30) {
      resultText = 'Overweight';
    } else if (result >= 18.5) {
      resultText = 'Normal';
    } else {
      resultText = 'Underweight';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              txt(context, "Name", name),
              txt(context, "Gender", isMale ? 'Male' : 'Female'),
              txt(context, "Result", result.toStringAsFixed(2)),
              txt(context, "Healthiness", resultPhrase),
              txt(context, "Age", age),
            ],
          ),
        ),
      ),
    );
  }
}

Widget txt(context , String txt , txt2) {
  return Text(
    '$txt : $txt2',
    style: Theme.of(context).textTheme.displayLarge,
    textAlign: TextAlign.center,
  );
}

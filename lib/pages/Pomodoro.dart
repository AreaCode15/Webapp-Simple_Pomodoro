import 'package:flutter/material.dart';
import 'package:webapp_simple_pomodoro/components/tempo_input.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [Text("Simple Pomodoro"),
        TempoInput(
            title: "Work",
            value: 25,
        ),
          TempoInput(
            title: "Break",
            value: 5,
          ),
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:webapp_simple_pomodoro/components/StopWatch.dart';
import 'package:webapp_simple_pomodoro/components/TempoInput.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
              child: StopWatch(),
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
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
        ),
        ],
      )
    );
  }
}

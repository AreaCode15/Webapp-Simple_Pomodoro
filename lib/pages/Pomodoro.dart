import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapp_simple_pomodoro/components/StopWatch.dart';
import 'package:webapp_simple_pomodoro/components/TempoInput.dart';
import '../Store/pomodoro.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
              child: StopWatch(),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Observer(builder: (_) => Row (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TempoInput(
                title: "Work",
                value: store.workTime,
                inc: store.started && store.thisWorking()
                ? null
                : store.increaseworkTime,
                dec: store.decrementworkTime,
              ),
              TempoInput(
                title: "Break",
                value: store.restTime,
                inc: store.started && store.thisResting()
                    ? null
                    : store.increaserestTime,
                dec: store.started && store.thisResting()
                    ? null
                    : store.decrementrestTime,
              ),
            ],
          ))
        ),
        ],
      )
    );
  }
}

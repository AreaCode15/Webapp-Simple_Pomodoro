import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:webapp_simple_pomodoro/components/StopWatchButton.dart';
import 'package:provider/provider.dart';
import '../Store/pomodoro.store.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer (
      builder: (_) {
        return Container(
          color : store.thisWorking() ? Colors.red : Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                store.thisWorking() ? "Time To Work" : "Time To Break",
              style: const TextStyle(
                fontSize: 40,
                color: Colors.white
              ),
              ),
              const SizedBox(height: 20),
              Text("${store.minutes.toString().padLeft(2, "0")}:${store.seconds.toString().padLeft(2, "0")}",
                style: const TextStyle(fontSize: 120,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.started)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: StopWatchButton(
                        text: "Start",
                        icon: Icons.play_arrow_rounded,
                        click: store.start,
                      ),
                    ),
                  if (store.started)
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: StopWatchButton(
                        text: "Stop",
                        icon: Icons.stop_rounded,
                        click: store.stop,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: StopWatchButton(
                        text: "Reset",
                        icon: Icons.refresh_rounded,
                    click: store.refresh,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

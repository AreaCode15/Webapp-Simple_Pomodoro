import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum IntervalType { work, rest }

abstract class _PomodoroStore with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  IntervalType intervalType = IntervalType.work;

  Timer? stopwatch;

  @action
  void start() {
    started = true;
    stopwatch = Timer.periodic(Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeIntervalType();
      } else if(seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    stopwatch?.cancel();
  }

  @action
  void refresh() {
    stop();
    minutes = thisWorking() ? workTime : restTime;
    seconds = 0;
  }

  @action
  void increaseworkTime() {
    workTime++;
    if (thisWorking()) {
      refresh();
    }
  }

  @action
  void decrementworkTime() {
    if(workTime >1) {
      workTime--;
      if (thisWorking()) {
        refresh();
      }
    }
  }

  @action
  void increaserestTime() {
    restTime++;
    if (thisResting()) {
      refresh();
    }
  }

  @action
  void decrementrestTime() {
    if(restTime >1 ) {
      restTime--;
      if (thisResting()) {
        refresh();
      }
    }
  }

  bool thisWorking() {
    return intervalType == IntervalType.work;
  }

  bool thisResting() {
    return intervalType == IntervalType.rest;
  }

  void _changeIntervalType () {
    if (thisWorking()) {
      intervalType = IntervalType.rest;
      minutes = restTime;
    }
    else {
      intervalType = IntervalType.work;
      minutes = workTime;
    }
    seconds = 0;
  }
}
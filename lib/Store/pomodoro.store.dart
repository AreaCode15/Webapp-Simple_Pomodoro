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
  IntervalType intervalType = IntervalType.rest;

  @action
  void start() {
    started = true;
  }

  @action
  void stop() {
    started = false;
  }

  @action
  void refresh() {
    started = false;
  }

  @action
  void increaseworkTime() {
    workTime++;
  }

  @action
  void decrementworkTime() {
    workTime--;
  }

  @action
  void increaserestTime() {
    restTime++;
  }

  @action
  void decrementrestTime() {
    restTime--;
  }

  bool thisWorking() {
    return intervalType == IntervalType.work;
  }

  bool thisResting() {
    return intervalType == IntervalType.rest;
  }

}
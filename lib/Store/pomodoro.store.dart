import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

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

}
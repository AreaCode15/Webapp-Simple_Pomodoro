import 'package:flutter/material.dart';
import 'package:webapp_simple_pomodoro/pages/Pomodoro.dart';
import 'package:provider/provider.dart';
import './Store/pomodoro.store.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const Pomodoro(),
      ),
    );
  }
}
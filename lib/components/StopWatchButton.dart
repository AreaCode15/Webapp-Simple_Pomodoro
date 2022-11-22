import 'package:flutter/material.dart';

class StopWatchButton extends StatelessWidget {

  final String text;
  final IconData icon;

  const StopWatchButton ({
  Key? key,
  required this.text,
  required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.deepPurple,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        textStyle: const TextStyle(fontSize: 20),
      ),
    onPressed: () {},
    child: Row(
  children: [
    Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Icon(
    icon,
      size: 20,
    ),
  ),
  Text(text),
  ],
  ),
  );
  }
}

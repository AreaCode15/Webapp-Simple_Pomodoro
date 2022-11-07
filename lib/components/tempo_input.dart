import 'package:flutter/material.dart';

class TempoInput extends StatelessWidget {
  final String title;
  final int value;

  const TempoInput({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.title),
      Row(
        children: [
          Text("${this.value}"),
        ],
       ),
      ],
    );
  }
}

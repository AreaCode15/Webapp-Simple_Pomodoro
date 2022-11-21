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
        Text(title),
      Row(
        children: [
          ElevatedButton(
              onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: Colors.blue,
              padding: const EdgeInsets.all(5),
            ),
              child: const Icon(
                Icons.arrow_downward_rounded,
              color: Colors.white,
              ),
          ),
          Text("$value"),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: Colors.blue,
              padding: const EdgeInsets.all(5),
            ),
            child: const Icon(
              Icons.arrow_upward_rounded,
              color: Colors.white,
            ),
          ),
        ],
       ),
      ],
    );
  }
}

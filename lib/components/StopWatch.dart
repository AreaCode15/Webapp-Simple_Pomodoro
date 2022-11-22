import 'package:flutter/material.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color : Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text("Time To Work",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white
          ),),
        ],
      ),
    );
  }
}

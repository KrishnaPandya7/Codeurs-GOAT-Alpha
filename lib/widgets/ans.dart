import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  final String text;
  const Ans({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

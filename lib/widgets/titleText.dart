import 'package:flutter/material.dart';

class StyledTitleText extends StatelessWidget {
  const StyledTitleText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}

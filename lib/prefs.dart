import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [Text("Strength: "), Text("3"), SizedBox(width: 50)],
        ),
        Row(
          children: [Text("Sugars: "), Text("3"), SizedBox(width: 50)],
        ),
      ],
    );
  }
}

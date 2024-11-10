import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            const Text("20 "),
            Image.asset(
              "assets/img/coffee_bean.png",
              width: 40,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: const SizedBox(width: 50)),
            const Text("+"),
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            const Text("10 "),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 40,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: const SizedBox(width: 50)),
            const Text("+"),
          ],
        ),
      ],
    );
  }
}

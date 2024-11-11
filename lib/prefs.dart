import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/bodyText.dart';
import 'package:test_flutter/widgets/increaseButton.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox(width: 50)),
            IncreaseButton(onPressed: increaseStrength, child: const Text("+"))
          ],
        ),
        Row(
          children: [
            const StyledBodyText("Sugar: "),
            if (sugar == 0)
              const Text(
                "No sugar",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
              ),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 30,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox(width: 50)),
            IncreaseButton(onPressed: increaseSugar, child: const Text("+"))
          ],
        ),
      ],
    );
  }
}

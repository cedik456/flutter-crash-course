import 'package:flutter/material.dart';
import 'package:test_flutter/prefs.dart';
import 'package:test_flutter/widgets/bodyText.dart';
import 'package:test_flutter/widgets/titleText.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const StyledTitleText("My Coffee Id"),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: const EdgeInsets.all(20),
              child: const StyledBodyText("How I like my coffee"),
            ),
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20),
              child: const Preferences(),
            ),
            Expanded(
              child: Image.asset(
                "assets/img/coffee_bg.jpg",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:test_flutter/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text("Red"),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text("Green"),
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: const Text("Blue"),
          )
        ],
      ),
    );
  }
}

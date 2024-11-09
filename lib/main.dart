import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Hi User"),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: const Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600],
      // width: 200,
      // height: 200,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      child: const Text("This is the background",
          style: TextStyle(
              fontSize: 18,
              letterSpacing: 4,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic)),
    );
  }
}

import 'package:flutter/material.dart';

class IncreaseButton extends StatelessWidget {
  const IncreaseButton(
      {super.key, required this.onPressed, required this.child});

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.brown[700], foregroundColor: Colors.white),
      onPressed: onPressed,
      child: child,
    );
  }
}

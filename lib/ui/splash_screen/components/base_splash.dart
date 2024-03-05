import 'package:flutter/material.dart';

class BaseSplash extends StatelessWidget {
  final Widget child;
  const BaseSplash({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: child,
        ),
      ),
    );
  }
}

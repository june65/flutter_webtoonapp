import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen2.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen2(),
    );
  }
}

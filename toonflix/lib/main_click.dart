import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onClick() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click counter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              for (var n in numbers) Text('$n'),
              IconButton(onPressed: onClick, icon: const Icon(Icons.add_box)),
            ],
          ),
        ),
      ),
    );
  }
}

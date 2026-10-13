import 'package:flutter/material.dart';

// Student-editable line for Session 1.
// Students change 'apple' to 'orange' and use hot reload.
var fruit = 'apple';

void main() {
  runApp(const FruitBridgeApp());
}

// Instructor note: hide/explain this scaffold only in Chapter 2.
class FruitBridgeApp extends StatelessWidget {
  const FruitBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Fruit Sandbox')),
        body: Center(
          child: Text(
            fruit,
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

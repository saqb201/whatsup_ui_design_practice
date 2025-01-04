import 'package:flutter/material.dart';
import 'home_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        // ... other theme properties
      ),
      home: const Homescreen(),
    );
  }
}

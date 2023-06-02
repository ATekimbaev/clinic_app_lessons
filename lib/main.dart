import 'package:flutter/material.dart';
import 'package:practice/ui/first_screen.dart';
import 'package:practice/ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sf-pro',
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

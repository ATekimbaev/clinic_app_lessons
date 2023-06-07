import 'package:flutter/material.dart';
import 'package:practice/ui/check_code_page.dart';
import 'package:practice/ui/first_screen.dart';
import 'package:practice/ui/main_page/bottom_bar.dart';

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
      home: BottmNavBar(),
    );
  }
}

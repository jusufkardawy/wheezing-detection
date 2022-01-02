import 'package:flutter/material.dart';
import 'package:detector/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Detector',
      theme: ThemeData(),
      home: First_Screen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nikeshoeapp/pages/login/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(
          0xFFCEDDEE,
        ),
        body: Login(),
      ),
    );
  }
}

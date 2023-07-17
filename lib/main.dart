import 'package:flutter/material.dart';
import 'package:note_app/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins", brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

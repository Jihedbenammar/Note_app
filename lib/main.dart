import 'package:flutter/material.dart';
import 'package:note_app/views/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constant/colors.dart';
import 'models/note_model.dart';

void main() async {
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.initFlutter();
  await Hive.openBox(Consts.notebox);
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

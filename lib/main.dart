import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/bloc_observer.dart';
import 'package:note_app/cubit/show_note_cubit/show_note_cubit.dart';
import 'package:note_app/views/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constant/colors.dart';
import 'models/note_model.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(Consts.notebox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowNoteCubit(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: "Poppins", brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.title, this.maxlines = 1});
  final String title;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: const TextStyle(color: Kcolors.kcolor2),
        border: buildborder(),
        enabledBorder: buildborder(state: "desable"),
        focusedBorder: buildborder(state: "enable"),
      ),
    );
  }

  OutlineInputBorder buildborder({String state = "desable"}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
            color: state == 'desable' ? Kcolors.kwhite : Kcolors.kcolor2,
            width: 2));
  }
}

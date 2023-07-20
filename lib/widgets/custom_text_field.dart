import 'package:flutter/material.dart';
import 'package:note_app/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.title, this.maxlines = 1, this.onsaved});
  final String title;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is requuired ';
        }
      },
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

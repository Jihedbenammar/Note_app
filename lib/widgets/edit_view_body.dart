import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(
            height: 45,
          ),
          CustomTextField(title: "title"),
          SizedBox(
            height: 45,
          ),
          CustomTextField(
            title: "content",
            maxlines: 5,
          )
        ],
      ),
    );
  }
}

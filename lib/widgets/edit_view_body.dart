import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  EditViewBody({super.key});

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey();

  final AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const CustomAppBar(
              title: "Edit Note",
              icon: FontAwesomeIcons.check,
            ),
            const SizedBox(
              height: 45,
            ),
            CustomTextField(
              title: "title",
              onsaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 45,
            ),
            CustomTextField(
              onsaved: (value) {
                subtitle = value;
              },
              title: "content",
              maxlines: 5,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubit/show_note_cubit/show_note_cubit.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import '../models/note_model.dart';

class EditViewBody extends StatefulWidget {
  EditViewBody({super.key, required this.note});
  final NoteModel note;

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
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                BlocProvider.of<ShowNoteCubit>(context).fetchnote();
                Navigator.pop(context);
              },
              title: "Edit Note",
              icon: FontAwesomeIcons.check,
            ),
            const SizedBox(
              height: 45,
            ),
            CustomTextField(
              title: "title",
              onchange: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 45,
            ),
            CustomTextField(
              onchange: (value) {
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    var keyboard = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: keyboard),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteLoading) {
            isloading = true;
          } else if (state is AddNoteSuccess) {
            isloading = true;
            Navigator.pop(context);
          } else if (state is AddNoteFailer) {
            print(state.error);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              autovalidateMode: autovalidateMode,
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                    onsaved: (data) {
                      title = data;
                    },
                    title: "title",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onsaved: (data) {
                      subtitle = data;
                    },
                    title: "content",
                    maxlines: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    isloading: isloading,
                    ontap: () async {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        await BlocProvider.of<AddNoteCubit>(context).addnote(
                            NoteModel(
                                title: title!,
                                subtitle: subtitle!,
                                date: DateTime.now().toString(),
                                color: Colors.blue.value));
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

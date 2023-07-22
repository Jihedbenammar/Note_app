import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubit/show_note_cubit/show_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

import '../constant/colors.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.notellist});
  final NoteModel notellist;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colorslist[notellist.color],
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notellist.title,
                style: const TextStyle(fontSize: 28, color: Kcolors.kblack),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  notellist.subtitle,
                  style: TextStyle(
                      fontSize: 18, color: Kcolors.kblack.withOpacity(0.35)),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Kcolors.kblack,
                ),
                onPressed: () {
                  notellist.delete();
                  BlocProvider.of<ShowNoteCubit>(context).fetchnote();
                  BlocProvider.of<ShowNoteCubit>(context).x--;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                notellist.date,
                style: TextStyle(
                    fontSize: 14, color: Kcolors.kblack.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/constant/colors.dart';
import 'package:note_app/cubit/show_note_cubit/show_note_cubit.dart';
import 'custom_appbar.dart';
import 'custom_note_item.dart';
import 'nite_item_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ShowNoteCubit>(context).fetchnote();
    return BlocBuilder<ShowNoteCubit, ShowNoteState>(
      builder: (context, state) {
        if (state is ShowNoteSuccess) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                ),
                CustomAppBar(
                  title: "Notes",
                  icon: Icons.search,
                ),
                SizedBox(
                  height: 10,
                ),
                ItemList(),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

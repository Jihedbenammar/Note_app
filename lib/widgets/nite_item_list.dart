import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/show_note_cubit/show_note_cubit.dart';

import '../models/note_model.dart';
import 'custom_note_item.dart';

class ItemList extends StatefulWidget {
  const ItemList({super.key});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<NoteModel>? notelist;
  @override
  Widget build(BuildContext context) {
    List<NoteModel>? notelist =
        BlocProvider.of<ShowNoteCubit>(context).noteList;
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notelist!.length,
          itemBuilder: (context, index) {
            return CustomNoteItem(
              notellist: notelist[index],
            );
          }),
    );
  }
}

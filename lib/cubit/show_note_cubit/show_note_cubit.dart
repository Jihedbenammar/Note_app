import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constant/colors.dart';
import '../../models/note_model.dart';

part 'show_note_state.dart';

class ShowNoteCubit extends Cubit<ShowNoteState> {
  List<NoteModel>? noteList;
  ShowNoteCubit() : super(ShowNoteInitial());
  int x = 0;
  fetchnote() {
    var notebox = Hive.box<NoteModel>(Consts.notebox);
    noteList = notebox.values.toList();
    emit(ShowNoteSuccess());
  }
}

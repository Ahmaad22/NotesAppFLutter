import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Constants/const.dart';
import 'package:notes_app/Models/note_Model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
Color color=Color(0xffAC3931);

  addNote(NoteModel note){
    note.color=color.value;
    emit(AddIsLoading());
    try {
  var noteBoxes = Hive.box<NoteModel>(knotebox);
  noteBoxes.add(note);
    emit(AddSucces());

}  catch (e) {
 emit(AddFailure(erorrMessage: e.toString()));
}

  }
}

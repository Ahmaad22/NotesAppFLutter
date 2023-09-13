import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constants/const.dart';
import 'package:notes_app/Models/note_Model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());
List<NoteModel>? notes;
  GetNotes(){
  var noteBoxes = Hive.box<NoteModel>(knotebox);
notes = noteBoxes.values.toList();
     emit(GetNotesIsSucces());

} 
}
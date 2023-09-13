import 'package:flutter/material.dart';
import 'package:notes_app/Models/note_Model.dart';
import 'package:notes_app/widgets/EditNoteBody.dart';

class EditNote extends StatelessWidget {
  const EditNote({required this.note,super.key});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(note: note),
    );
  }
}
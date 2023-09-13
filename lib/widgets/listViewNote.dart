import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/cubitGetNotes/get_notes_cubit.dart';
import 'package:notes_app/Models/note_Model.dart';
import 'package:notes_app/widgets/customNoteItem.dart';

class listViewNote extends StatelessWidget {
  const listViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<GetNotesCubit>(context).notes ?? [] ;
        return ListView.builder(
          itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: customNoteItem(note: notes[index]),
              );
            }));
      },
    );
  }
}

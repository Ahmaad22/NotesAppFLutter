import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/cubitGetNotes/get_notes_cubit.dart';
import 'package:notes_app/Models/note_Model.dart';
import 'package:notes_app/widgets/CustomTextField.dart';
import 'package:notes_app/widgets/customAppBar.dart';

class EditNoteBody extends StatefulWidget {
  const  EditNoteBody({required this.note,super.key});
final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
    String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
        customAppBar(onPressed:(){
          widget.note.title=title??widget.note.title;
          widget.note.subtitle=subTitle??widget.note.subtitle;
          widget.note.save();
        BlocProvider.of<GetNotesCubit>(context).GetNotes();
Navigator.pop(context);
        },title: "Edit Note",icon: Icons.check,),
        CustomTextField(onChanged: (value){
           title=value;
        },maxlines: 1, hintText: widget.note.title),
        CustomTextField(onChanged: (value) {
          subTitle=value;
        },maxlines: 5, hintText: widget.note.subtitle)
        ],
      ),
    );
  }
}
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/cubitGetNotes/get_notes_cubit.dart';
import 'package:notes_app/Models/note_Model.dart';
import 'package:notes_app/views/EditNote.dart';

class customNoteItem extends StatelessWidget {
  const customNoteItem({required this.note,super.key});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNote(
            note: note,
          );
        }));
      },
      child: Container(
        
        decoration: BoxDecoration(color: Color(note.color),borderRadius: BorderRadius.circular(16)),
    child: Padding(
      padding: const EdgeInsets.only(top: 24,left: 24,bottom: 24,right: 24),
      child:   Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
            ListTile(
          title: Text(note.title,style: TextStyle(color: Colors.black,fontSize: 24),),
        subtitle:  Padding(
          padding: const EdgeInsets.only(top: 16,bottom: 24),
          child: Text(note.subtitle,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
        ),
        trailing: IconButton(onPressed: () {
          note.delete();
          BlocProvider.of<GetNotesCubit>(context).GetNotes();
        },icon:Icon(FontAwesomeIcons.trash,color: Colors.black,)),
        
        ),
        Text(note.date,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12))
      ],
      ),
    ),
    
      ),
    );
  }
}
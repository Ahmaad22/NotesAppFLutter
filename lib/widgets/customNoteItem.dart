import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/EditNote.dart';

class customNoteItem extends StatelessWidget {
  const customNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNote();
        }));
      },
      child: Container(
        
        decoration: BoxDecoration(color: Color(0xFFFFCD79),borderRadius: BorderRadius.circular(16)),
    child: Padding(
      padding: const EdgeInsets.only(top: 24,left: 24,bottom: 24,right: 24),
      child:   Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
            ListTile(
          title: Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 24),),
        subtitle:  Padding(
          padding: const EdgeInsets.only(top: 16,bottom: 24),
          child: Text("Build your Career with Tharwat Samy",style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
        ),
        trailing: Icon(FontAwesomeIcons.trash,color: Colors.black,),
        
        ),
        Text("May,21,2002",style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 12))
      ],
      ),
    ),
    
      ),
    );
  }
}
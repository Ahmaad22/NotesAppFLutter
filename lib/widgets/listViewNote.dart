import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customNoteItem.dart';

class listViewNote extends StatelessWidget {
  const listViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(padding: EdgeInsets.zero,itemBuilder: ((context, index) {
        
        return Padding(
          padding: const EdgeInsets.symmetric(vertical:4.0),
          child: customNoteItem(),
        );
      }));
    
  }
}
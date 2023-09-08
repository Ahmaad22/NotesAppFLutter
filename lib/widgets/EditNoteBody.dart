import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextField.dart';
import 'package:notes_app/widgets/customAppBar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
        customAppBar(title: "Edit Note",icon: Icons.check,),
        CustomTextField(maxlines: 1, hintText: "title"),
        CustomTextField(maxlines: 5, hintText: "content")
        ],
      ),
    );
  }
}
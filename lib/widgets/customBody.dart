import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customAppBar.dart';
import 'package:notes_app/widgets/listViewNote.dart';

class customBody extends StatelessWidget {
  const customBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
           customAppBar(title: "Notes",icon: Icons.search),
           
            Expanded(child: listViewNote()),
           
    
    
    
        ],
      ),
    );
  }
}
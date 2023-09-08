import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customBody.dart';
import 'package:notes_app/widgets/modalBottmoSheet.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: customBody(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        
        showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          context: context, builder: (context) {
        
          return modalBottmoSheet();
        },);
      },child: Icon(Icons.add)),
    );
  }
}
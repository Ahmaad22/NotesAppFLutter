import 'package:flutter/material.dart';
import 'package:notes_app/views/homePage.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "assets/fonts/Poppins-Regular.ttf"
      ),
home: homePage(),
    );
  }
}

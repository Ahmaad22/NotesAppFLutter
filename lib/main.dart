import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Constants/const.dart';
import 'package:notes_app/Cubits/cubitAddNote/add_note_cubit.dart';
import 'package:notes_app/Cubits/cubitGetNotes/get_notes_cubit.dart';
import 'package:notes_app/Models/note_Model.dart';
import 'package:notes_app/views/SimpleBlocObserver.dart';
import 'package:notes_app/views/homePage.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.openBox<NoteModel>(knotebox);

  //Hive.box("note boxes");
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: BlocProvider(
create: (context) => GetNotesCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: "assets/fonts/Poppins-Regular.ttf"),
          home: homePage(),
        ),
      ),
    );
  }
}

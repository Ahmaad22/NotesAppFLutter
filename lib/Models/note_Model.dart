import 'package:hive/hive.dart';

part 'note_Model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject{
@HiveField(0)
 String title;
@HiveField(1)
 String subtitle;
@HiveField(2)
final String date;
@HiveField(3)
 int color;

  NoteModel({required this.title, required this.subtitle, required this.date, required this.color});

}
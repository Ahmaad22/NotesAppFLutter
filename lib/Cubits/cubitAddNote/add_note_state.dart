part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}
final class InitalState extends AddNoteState{}
final class AddIsLoading extends AddNoteState{}
final class AddSucces extends AddNoteState{}
final class AddFailure extends AddNoteState{
  final String erorrMessage;
  AddFailure({required this.erorrMessage});
}
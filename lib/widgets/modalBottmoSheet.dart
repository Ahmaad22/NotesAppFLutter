import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Cubits/cubitAddNote/add_note_cubit.dart';
import 'package:notes_app/Cubits/cubitGetNotes/get_notes_cubit.dart';
import 'package:notes_app/Models/note_Model.dart';
import 'package:notes_app/widgets/CustomButton.dart';
import 'package:notes_app/widgets/CustomTextField.dart';

class modalBottmoSheet extends StatelessWidget {
  const modalBottmoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddSucces){
              BlocProvider.of<GetNotesCubit>(context).GetNotes();
              Navigator.pop(context);
            }
            else if(state is AddFailure){
              print(state.erorrMessage);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              
              inAsyncCall: state is AddIsLoading? true:false,
              child: Padding(
                padding:  EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom
                  
                  ),
                child: SingleChildScrollView(child: AddNoteForm()),
              ));
          },
        
      
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            maxlines: 1,
            hintText: "title",
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            maxlines: 5,
            hintText: "content",
          ),
          ColorsListView(),
          SizedBox(
            height: 50,
          ),
          customButton(
            onTap: () {

              var formattedDate = DateFormat('dd-mm-yyyy').format(DateTime.now());
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var note = NoteModel(title: title!, subtitle: subtitle!, date: formattedDate, color: Colors.amber.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
class colorITem extends StatelessWidget {
  const colorITem({super.key, required this.IsActive, required this.color});
final bool IsActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return IsActive?CircleAvatar(backgroundColor: Colors.white,radius: 38, child: CircleAvatar(radius: 25,backgroundColor: color,))
     :CircleAvatar(radius: 38,backgroundColor: color,);
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
int curIndex=0;
List<Color>colors=[
  Color(0xFFAC3931),
    Color(0xFFE5D352),
  Color(0xFFD9E76C),
  Color(0xFF537D8D),
  Color(0xFF482C3D),

];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 74,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 8),
            child: GestureDetector(
              onTap: (){
                curIndex=index;
                BlocProvider.of<AddNoteCubit>(context).color=colors[index];
                setState(() {
                  
                });
              },
              child: colorITem(
                color: colors[index],
                IsActive: curIndex==index,
              ),
            ),
          );
        }),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:notes_app/Constants/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.maxlines,required this.hintText,super.key});
final String hintText;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:24.0),
      child: TextField(
        maxLines: maxlines,
        cursorColor: kprimarycolor,
        decoration: InputDecoration(
         hintText: hintText,
         hintStyle: TextStyle(color: kprimarycolor),
          border: OutlineInputBorder(
         
         borderRadius: BorderRadius.circular(16),
         
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kprimarycolor),
          ),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kprimarycolor),
          )
        ),
      ),
    );
  }
}
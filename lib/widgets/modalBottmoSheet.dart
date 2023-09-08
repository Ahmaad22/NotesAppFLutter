import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomButton.dart';
import 'package:notes_app/widgets/CustomTextField.dart';

class modalBottmoSheet extends StatelessWidget {
  const modalBottmoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              maxlines: 1,
              hintText: "title",),
                CustomTextField(
              maxlines: 5,
              hintText: "content",),
              SizedBox(height: 50,),
              customButton(),
              SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomSearch.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({required this.onPressed,required this.icon,required this.title,super.key});
final String title;
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(height: 120,),
        Text(title,style: TextStyle(fontSize: 24),),
        Spacer(),
        CustomSearch(onPressed: onPressed,icon: icon,)
      ],
    );
  }
}
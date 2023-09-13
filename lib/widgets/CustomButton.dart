import 'package:flutter/material.dart';
import 'package:notes_app/Constants/const.dart';

class customButton extends StatelessWidget {
  const customButton({required this.onTap,super.key});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kprimarycolor,
            
          ),
          child: Center(child: Text("Add",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)),
        
      ),
    );
  }
}
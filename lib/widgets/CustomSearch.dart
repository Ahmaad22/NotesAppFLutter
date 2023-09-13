import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({required this.onPressed,required this.icon,super.key});
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container (
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular( 16),
        color: Colors.white.withOpacity(0.05)
      ),
    child: Center(child: IconButton(onPressed: onPressed,icon: Icon(icon,color: Colors.white.withOpacity(0.8),)),
    ),
    );
  }
}
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({required this.icon,super.key});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container (
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05)
      ),
    child: Center(child: Icon(icon,color: Colors.white.withOpacity(0.8),),
    ),
    );
  }
}
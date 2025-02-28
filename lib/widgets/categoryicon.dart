import 'package:flutter/material.dart';
import 'package:untitled4/utils/Colors.dart';

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  const CategoryIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.brown.shade200.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(icon, color: kPrimaryColor, size: 30),
    );
  }
}
import 'package:flutter/material.dart';

class Customimage extends StatelessWidget {
  final String bath;
  const Customimage({super.key, required this.bath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

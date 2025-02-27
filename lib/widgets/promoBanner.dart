import 'package:flutter/material.dart';

class Promobanner extends StatelessWidget {
  const Promobanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
    image: const DecorationImage(image: AssetImage("assets/imgs/promo.png"), fit: BoxFit.fill),
    ),
    );
  }
}

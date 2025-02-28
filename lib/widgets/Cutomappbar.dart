import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){Navigator.of(context).pop();} ,icon: const Icon(Icons.arrow_back_ios)),
        const Text(
          "Detail",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Icon(Icons.favorite_border),
      ],
    );
  }
}

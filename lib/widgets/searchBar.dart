import 'package:flutter/material.dart';
import 'package:untitled4/utils/Colors.dart';
class Searchbar1 extends StatelessWidget {
  const Searchbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[400], fontWeight: FontWeight.bold, fontSize: 18),
              fillColor: Colors.black12,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: "Search Coffee",
              prefixIcon: const Icon(Icons.search, size: 30),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
          child: const Icon(Icons.tune, size: 30, color: Colors.white),
        ),
      ],
    );
  }
}

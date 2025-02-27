import 'package:flutter/material.dart';
import 'package:untitled4/utils/Colors.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({super.key});

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  final List<String> items = const [
    'Cappuccino', 'Espresso', 'Latte', 'Juice', 'Tea', 'Coffee', 'Tea With Milk',
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => setState(() => _selectedIndex = index),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: _selectedIndex == index ? kPrimaryColor : Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              items[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: _selectedIndex == index ? Colors.white : Colors.black38),
            ),
          ),
        ),
      ),
    );
  }
}

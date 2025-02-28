import 'package:flutter/material.dart';
import 'package:untitled4/utils/Colors.dart';

class CustomSize extends StatefulWidget {
  const CustomSize({super.key});

  @override
  State<CustomSize> createState() => _CustomSizeState();
}

class _CustomSizeState extends State<CustomSize> {
  int selectedIndex = -1; // Initialize with -1 (no selection)

  @override
  Widget build(BuildContext context) {
    List<String> sizes = ["S", "M", "L"];

    return SizedBox(
      height: 50,
      child: Row(
        children: List.generate(sizes.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 9),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 43, vertical: 8),
                height: 50,
                width: 105,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedIndex == index ? Colors.brown : Colors.grey.shade300,
                      width: 1),
                  color: selectedIndex == index ? const Color(0xFFECCAB8) : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    sizes[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index ? kPrimaryColor : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

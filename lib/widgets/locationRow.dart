import 'package:flutter/material.dart';

class Locationrow extends StatelessWidget {
  const Locationrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Bilzon. Tanjungbalai", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(width: 8),
        PopupMenuButton<String>(
          icon: const Icon(Icons.arrow_drop_down_rounded, size: 30, color: Colors.white),
          itemBuilder: (context) => [
            const PopupMenuItem(value: "Item 1", child: Text("Item 1")),
            const PopupMenuItem(value: "Item 2", child: Text("Item 2")),
            const PopupMenuItem(value: "Item 3", child: Text("Item 3")),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled4/pages/mainpage.dart';
import 'package:untitled4/utils/Colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectednav = 0;
  int selctedscreen = 0;
  List screens = [
    const Mainpage(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectednav,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectednav = index;
            selctedscreen = index; // Ensure correct variable name
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications, size: 30), label: ""),
        ],
      ),
      backgroundColor: Colors.white,
      body: screens[selctedscreen]
    );
  }
}

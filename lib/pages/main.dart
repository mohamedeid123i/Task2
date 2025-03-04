import 'package:flutter/material.dart';
import 'package:untitled4/pages/item_details.dart';
import 'package:untitled4/pages/models/Item_model.dart';
import 'package:untitled4/utils/Colors.dart';
import 'package:untitled4/widgets/CustomColumn.dart';
import 'package:untitled4/widgets/locationRow.dart';
import 'package:untitled4/widgets/promoBanner.dart';
import 'package:untitled4/widgets/categoryList.dart';
import 'package:untitled4/widgets/itemGrid.dart';
import 'package:untitled4/widgets/searchBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int selctedscreen = 0;
    List  screens = [
      const MyHomePage(),
      const Scaffold(),
      const Scaffold(),
      const Scaffold()
    ];
    return  MaterialApp(
      home: screens[selctedscreen],
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(height: 330, color: Colors.black),
                const Padding(
                  padding: EdgeInsets.only(right: 20,left: 20,top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(height: 10),
                      Locationrow(),
                      SizedBox(height: 30),
                      Searchbar1(),
                      SizedBox(height: 20),
                      Promobanner(),
                      SizedBox(height: 20),
                      Categorylist(),
                      SizedBox(height: 20),
                      Itemgrid(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

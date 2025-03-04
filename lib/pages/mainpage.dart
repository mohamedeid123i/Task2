
import 'package:flutter/material.dart';

import '../widgets/categoryList.dart';
import '../widgets/itemGrid.dart';
import '../widgets/locationRow.dart';
import '../widgets/promoBanner.dart' show Promobanner;
import '../widgets/searchBar.dart' show Searchbar1;

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
      );
  }
}

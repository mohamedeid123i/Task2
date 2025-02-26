import 'package:flutter/material.dart';
import 'package:untitled4/pages/models/Item_model.dart';
import 'package:untitled4/utils/Colors.dart';
import 'package:untitled4/widgets/CustomColumn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  final List<String> items = const [
    'Cappuccino', 'Espresso', 'Latte', 'Juice', 'Tea', 'Coffee', 'Tea With Milk',
  ];
  int _selectedIndex = 0;
  int _selectednav = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectednav,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectednav = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 30,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,size: 30,),label: "" ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,size: 30,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications,size: 30),label: ""),
        ],
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(height: 350, color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 25),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Location", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text("Bilzon. Tanjungbalai", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 8),
                          PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down_rounded, size: 30, color: Colors.white),
                            onSelected: (String value) {},
                            itemBuilder: (BuildContext context) => [
                              const PopupMenuItem(value: "Item 1", child: Text("Item 1")),
                              const PopupMenuItem(value: "Item 2", child: Text("Item 2")),
                              const PopupMenuItem(value: "Item 3", child: Text("Item 3")),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
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
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(image: AssetImage("assets/imgs/promo.png"), fit: BoxFit.fill),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                // Horizontal category list
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 70,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => setState(() => _selectedIndex = index),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: _selectedIndex == index ?  kPrimaryColor : Colors.grey[100],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  items[index],
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: _selectedIndex == index ? Colors.white : Colors.black38),
                                ),
                              ),
                              const SizedBox(width: 10)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Grid of items
                SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                        (context, i) => Customcolumn(itemModel: items_category[i]),
                    childCount: items_category.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

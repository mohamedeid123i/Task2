import 'package:flutter/material.dart';
import 'package:untitled4/pages/models/Item_model.dart';
import 'package:untitled4/utils/Colors.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled4/widgets/CustomReadmore.dart';
import 'package:untitled4/widgets/CustomSize.dart';
import 'package:untitled4/widgets/Custombox.dart';
import 'package:untitled4/widgets/Customimage.dart';
import 'package:untitled4/widgets/Cutomappbar.dart';

import '../widgets/categoryicon.dart';

class ItemDetails extends StatefulWidget {
  final ItemModel itemModel;

  const ItemDetails({super.key, required this.itemModel});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const Customappbar(),
                  const SizedBox(height: 20),
                  Customimage(bath: widget.itemModel.image,),
                  const SizedBox(height: 20),
                   Text( widget.itemModel.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Text("Ice/Hot"), Spacer(), CategoryIcon(icon: Icons.pedal_bike), SizedBox(width: 10), CategoryIcon(icon: Icons.coffee), SizedBox(width: 10), CategoryIcon(icon: Icons.local_drink),],
                  ),
                  const SizedBox(height: 10),
                   Row(
                    children: [
                      const Icon(Icons.star_rounded, color: Colors.orange, size: 30),
                      const SizedBox(width: 5),
                      Text("${widget.itemModel.rating}", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                      const SizedBox(width: 5),
                      const Text("(230)", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Colors.grey.shade200, thickness: 2,),
                  const SizedBox(height: 10),
                  const Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  const SizedBox(height: 15),
                  const Customreadmore(),
                  const SizedBox(height: 20),
                  const Text("Size", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  const SizedBox(height: 20),
                  const CustomSize(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            // Fixed bottom section without Expanded inside Column
             Custombox(price: widget.itemModel.price,),
          ],
        ),
      ),
    );
  }
}

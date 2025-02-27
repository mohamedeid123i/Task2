import 'package:flutter/material.dart';
import 'package:untitled4/pages/models/Item_model.dart';
import 'package:untitled4/widgets/CustomColumn.dart';

class Itemgrid extends StatelessWidget {
  const Itemgrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 300,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      itemCount: items_category.length,
      itemBuilder: (context, i) => Customcolumn(itemModel: items_category[i]),
    );
  }
}

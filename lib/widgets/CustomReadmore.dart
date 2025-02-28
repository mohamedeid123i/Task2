import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled4/utils/Colors.dart';

class Customreadmore extends StatelessWidget {
  const Customreadmore({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'A cappuccino is an approxirnateli,/ ISO m) (S oz)beveraae, v,lth 25 ml of espresso coffee andof the Read More',
      trimMode: TrimMode.Line,
      trimLines: 2,
      colorClickableText: kPrimaryColor,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: kPrimaryColor),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled4/pages/models/Item_model.dart';
import 'package:untitled4/utils/Colors.dart';

class Customcolumn extends StatelessWidget {
 final ItemModel itemModel;
  const Customcolumn({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
            children:[
              Container(
                height:150,
                width:double.infinity,
                decoration:BoxDecoration(
                  color:Colors.grey[200],
                  image:DecorationImage(image:AssetImage(itemModel.image),fit:BoxFit.cover),
                  borderRadius:BorderRadius.circular(25),
                ),
              ),
              Positioned(
                top:5,right:8,
                child:Container(
                  padding:const EdgeInsets.symmetric(horizontal:5,vertical:2),
                  decoration:BoxDecoration(color:Colors.black12,borderRadius:BorderRadius.circular(10)),
                  child:Row(children:[
                    const Icon(Icons.star,color:Colors.yellow,size:14),
                    const SizedBox(width:2),
                    Text('${itemModel.rating}',style:const TextStyle(color:Colors.white,fontSize:12))
                  ]),
                ),
              ),
            ]),
        Text(itemModel.name, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        Text(itemModel.category, style: const TextStyle(fontSize: 20, color: Colors.grey)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$${itemModel.price}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kPrimaryColor)),
            Container(height: 50,width: 50,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.add,color: Colors.white,),
            ),

          ],
        ),
      ],
    );
  }
}

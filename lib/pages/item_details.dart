import 'package:flutter/material.dart';
import 'package:untitled4/utils/Colors.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Text("Detail",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Icon(Icons.favorite_border)
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/imgs/3.jpeg",),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Caffe Mocha",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 150,),
                const Text("Size",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20 ),),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 8),
                      height: 50,
                      width: 110,
                      child: Text("S",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300,width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 8),
                      height: 50,
                      width: 110,
                      child: Text("M",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300,width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 45,vertical: 8),
                      height: 50,
                      width: 110,
                      child: Text("L",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300,width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Expanded(child: Container( height: 200,width: double.infinity, decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),),
              SizedBox(height: 10,),
              Text("\$ 4.55",style: TextStyle(color: kPrimaryColor,fontSize: 25,fontWeight: FontWeight.bold),)
            ],),
            Container(width: 250,height: 60,decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(15)),child:TextButton(onPressed: (){}, child: Text("Buy Now",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),)) ,)
          ],),),)

        ],
      ),


    );
  }
}

class ItemModel {
  final String name;
  final String category;
  final double rating;
  final double price;
  final String image;
  ItemModel({
    required this.category,
    required this.price,
    required this.name,
    required this.image,
    required this.rating,
  });
}

final List<ItemModel> items_category = [
  ItemModel(
    name: "Caffe Mocha",
    category: "Deep Foum",
    rating: 4.0,
    price: 3.55,
    image: "assets/imgs/1.jpeg",
  ),
  ItemModel(
    name: "Flat White",
    category: "Espresso",
    rating: 4.8,
    price: 3.55,
    image: "assets/imgs/2.jpeg",
  ),
  ItemModel(
    name: "Cappuccino",
    category: "Deep Foum",
    rating: 4.8,
    price: 4,
    image: "assets/imgs/3.jpeg"
  ),
  ItemModel(
    name: "Latte",
    category: "Deep Foum",
    rating: 4.8,
    price: 3.55,
    image: "assets/imgs/1.jpeg"
  ),
];


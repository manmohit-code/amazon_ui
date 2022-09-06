class CatalogItems {
  static final Items = [
    Item(
      id: 1,
      name: "Amazon Alexa",
      desc: "4th Generation",
      price: 2999,
      color: "blue",
      image:
          "https://cdn.pixabay.com/photo/2020/01/11/18/13/alexa-4758340_960_720.jpg",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

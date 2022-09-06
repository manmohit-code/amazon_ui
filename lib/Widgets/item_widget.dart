import 'package:amazon_ui/models/catalog.dart';
import 'package:flutter/material.dart';

import 'package:amazon_ui/Widgets/item_widget.dart';

class ItemWidget extends StatelessWidget {
  //const ItemWidget({Key? key}) : super(key: key);
  final Item item;

  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text(item.price.toString()),
    );
  }
}

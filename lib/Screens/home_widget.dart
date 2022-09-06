// ignore_for_file: deprecated_member_use

import 'package:amazon_ui/Screens/utils/routes.dart';
import 'package:amazon_ui/Widgets/item_widget.dart';
import 'package:amazon_ui/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:amazon_ui/Widgets/item_widget.dart';

import '../Widgets/drawer.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 64, 230, 207),
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset(
              "assets/Images/PngItem_5094372.png",
              height: 50,
              width: 100,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, MyRoutes.loginRoutes);
                },
                child:
                    Icon(Icons.shopping_cart, size: 25.0, color: Colors.black),
              ),
            ),
          ],
          bottom: AppBar(
            backgroundColor: const Color.fromARGB(
              255,
              64,
              230,
              207,
            ),
            automaticallyImplyLeading: false,
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ),
        
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogItems.Items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogItems.Items[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

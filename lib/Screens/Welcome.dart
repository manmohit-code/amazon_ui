
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
          child: Image.asset(
        "assets/Images/amazon.jpg",
        fit: BoxFit.cover,
        height: 70,
      )),
    );
  }
}

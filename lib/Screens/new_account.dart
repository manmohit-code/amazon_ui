import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Text("Create a new account"),
        ],
      ),
    );
  }
}
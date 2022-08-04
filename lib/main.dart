import 'package:amazon_ui/Screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Welcome(),
      debugShowCheckedModeBanner: true,
    );
  }
}

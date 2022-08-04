import 'package:amazon_ui/Screens/Login_Page.dart';
import 'package:amazon_ui/Screens/welcome.dart';
import 'package:amazon_ui/screens/home_widget.dart';
import 'package:amazon_ui/screens/utils/routes.dart';
//import 'package:amazon_ui/screens/new_account.dart';
//import 'package:amazon_ui/screens/utils/routes.dart';
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
      routes: {
        MyRoutes.homewidgetRoutes: (context) => const HomeWidget(),
        MyRoutes.loginRoutes: (context) => const LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

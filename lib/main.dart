import 'package:amazon_ui/Screens/home_widget.dart';
import 'package:amazon_ui/Screens/new_account.dart';
import 'package:amazon_ui/Screens/utils/routes.dart';
import 'package:flutter/material.dart';
import 'Screens/Login_Page.dart';
import 'Screens/welcome.dart';

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
        primaryColor: const Color.fromARGB(255, 0, 140, 247),
      ),
      home: const Welcome(),
      routes: {
        MyRoutes.homewidgetRoutes: (context) => const HomeWidget(),
        MyRoutes.loginRoutes: (context) => const LoginPage(),
        MyRoutes.newaccountRoutes: (context) => NewAccount(),
      },
      debugShowCheckedModeBanner: true,
    );
  }
}

// ignore: file_names
import 'package:amazon_ui/screens/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 1),
        child: Column(
          children: [
            Image.asset(
              "assets/Images/amazon.jpg",
              fit: BoxFit.fitHeight,
              height: 70,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
            TextFormField(
              decoration: const InputDecoration(
                hintText: " ",
                labelText: "email or mobile phone number",
              ),
            ),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "", labelText: "Password"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 150,
              )),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homewidgetRoutes);
              },
              child: const Text(
                "click",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

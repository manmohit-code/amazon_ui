
import 'package:amazon_ui/screens/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 1),
        child: Column(
          children: [
            Image.asset(
              "assets/Images/amazon.jpg",
              fit: BoxFit.fitHeight,
              height: 70,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: " ",
                  labelText: "email or mobile phone number",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue,
                  ))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "",
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.black,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue,
                  ))),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              //Use For Perfome Tast With Animation
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homewidgetRoutes);
              },
              child: Container(
                width: 400,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("New to Amazon ?"),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              //Use For Perfome Task With Animation
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.newaccountRoutes);
                //write code here
              },
              child: Container(
                width: 400,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(216, 210, 210, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "i am new customer",
                  style: TextStyle(
                      color: Colors.black,
                      //fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "By signing in your are agreing to our ",
                      style: const TextStyle(fontSize: 12, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Conditions of Use",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, MyRoutes.homewidgetRoutes);
                              ////Link Condition Page Here////
                            },
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: " and\n",
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Privacy Notice.",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(color: Colors.blue),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "     ",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Condition of Use",
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          style: const TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: " ",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Privacy Notice",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: const TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: " ",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Help",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: const TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "© 2019-2022(BCA) Anand Enginering College",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            /*ElevatedButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 150,
              )
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homewidgetRoutes);
              },
              child: const Text(
                "Login",
                
              ),
            ), */
          ],
        ),
      ),
    );
  }
}

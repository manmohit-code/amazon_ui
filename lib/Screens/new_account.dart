import 'package:amazon_ui/Screens/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This Is Used To Add Amazon Image
      //This Fields Can be modified By the developrs
      //Edgeinsets. symmetric use to give value
      //Vartically and Horizontally
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
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Row(
                //This Is Used To Add Text 'Craate Account'
                //This Is text Field
                //

                children: const [
                  Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            //This Is Used To Add Text in fields
            // Text Fomr Field
            //Vartically and Horizontally

            TextFormField(
              decoration: const InputDecoration(
                hintText: " ",
                labelText: "Your name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "",
                labelText: "Email",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "",
                labelText: "Password",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "",
                labelText: "Password again",
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //InkWEll is used To Change the page by clicking on it
            //inkwell provide some animation
            //We can also use EleventedButton
            InkWell(
              //Use For Perfome Tast With Animation
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homewidgetRoutes);
              },
              child: Container(
                width: 350,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: const Text(
                  "Create your Amazon account",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //This IS used To Make Text Clickeble
            //Rick Text is used to make Text Clickable
            //
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Already have an account ? ',
                          style: const TextStyle(fontSize: 15, color: Colors.black),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Sing in',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, MyRoutes.loginRoutes);
                              },
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

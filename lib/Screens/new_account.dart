import 'package:amazon_ui/Screens/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatelessWidget {
  NewAccount({Key? key}) : super(key: key);

  final _formkey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This Is Used To Add Amazon Image
      //This Fields Can be modified By the developrs
      //Edgeinsets. symmetric use to give value
      //Vartically and Horizontally
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 1),
        child: Form(
          key: _formkey2,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
                    SizedBox(
                      height: 50,
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
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username cannot be empty";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "",
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email cannot be empty";
                  }
                  return null;
                },
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
                    width: 1.5,
                    color: Colors.black,
                  )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  } else if (value.length < 6) {
                    return "password should be atleast 6";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "",
                  labelText: "Password again",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  } else if (value.length < 6) {
                    return "password should be atleast 6";
                  }
                  return null;
                },
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
                  if (_formkey2.currentState!.validate())
                    Navigator.pushNamed(context, MyRoutes.loginRoutes);
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
                height: 20,
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
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
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
              ),
              const SizedBox(
                height: 2.5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "     ",
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Condition of Use",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //Navigator.pushNamed(
                                //  context, MyRoutes.loginRoutes);
                                ////Link Condition Page Here////
                              },
                            style: const TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
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
                                    ..onTap = () {
                                      //Navigator.pushNamed(
                                      //  context, MyRoutes.loginRoutes);
                                      ////Link Privacy Notice Page Page Here////
                                    },
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
                                    ..onTap = () {
                                      //Navigator.pushNamed(
                                      //  context, MyRoutes.loginRoutes);
                                      ////Link Help Page Here////
                                    },
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
                height: 10,
              ),
              const Text(
                "© 2019-2022(BCA) Anand Enginering College",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

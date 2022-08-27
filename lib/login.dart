import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:second/utili/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool container = false;
  final _formkey = GlobalKey<FormState>();

  movetoform(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        container = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, myroutes.homepage);
      setState(() {
        container = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/1.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "UserName",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "this is required";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "this is required";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      splashColor: Colors.red,
                      onTap: () => movetoform(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: container ? 50 : 150,
                        height: 50,
                        child: Center(
                          child: container
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "login",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(container ? 50 : 20),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //     style: TextButton.styleFrom(),
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, myroutes.homepage);
                    //     },
                    //     child: Text("login")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

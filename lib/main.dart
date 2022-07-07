import 'dart:html';

import 'package:flutter/material.dart';
import 'package:group_split_wise/register.dart';

void main() {
  runApp(MaterialApp(home: const loginScreen()));
}

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailc = TextEditingController();
  final TextEditingController passwc = TextEditingController();

  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailc,
      keyboardType: TextInputType.emailAddress,
      onSaved: (x) {
        emailc.text = x!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        hintText: "email",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
    );

    final passwordField = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: passwc,
      keyboardType: TextInputType.visiblePassword,
      onSaved: (x) {
        passwc.text = x!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        hintText: "password",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
    );

    final loginbutton = MaterialButton(
        child: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
        elevation: 5,
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.green,
        padding: EdgeInsets.all(20.0));
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(30),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          emailField,
                          SizedBox(height: 45),
                          passwordField,
                          SizedBox(height: 45),
                          loginbutton,
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?"),
                              MaterialButton(
                                  child: Text(
                                    "Sign Up!",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegistrationScreen()));
                                  })
                            ],
                          )
                        ],
                      ))))),
    );
  }
}

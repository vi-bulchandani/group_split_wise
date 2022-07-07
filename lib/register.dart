import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
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

    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Container(
          child: Text("Hello"),
        ));
  }
}

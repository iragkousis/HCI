import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(48.0),
        child: Image(image: AssetImage('../assets/cloudglasses.png')),
      ),
      floatingActionButton: Center(child: newMethod()),
    );
  }

  Column newMethod() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          cursorColor: Theme.of(context).cursorColor,
          initialValue: 'Input text',
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(Icons.favorite),
            labelText: 'Username',
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
            suffixIcon: Icon(Icons.remove_red_eye_outlined),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6200EE)),
            ),
          ),
        ),
        TextFormField(
          cursorColor: Theme.of(context).cursorColor,
          initialValue: 'Input text',
          maxLength: 20,
          decoration: const InputDecoration(
            icon: Icon(Icons.favorite),
            labelText: 'Label text',
            labelStyle: TextStyle(
              color: Color(0xFF6200EE),
            ),
            helperText: 'Helper text',
            suffixIcon: Icon(
              Icons.check_circle,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF6200EE)),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Remember my password"),
            MyStatefulWidget(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: Builder(builder: (context) {
            return FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, '/productsOverview');
                // Add your onPressed code here!
              },
              label: const Text('log in'),
              icon: const Icon(Icons.login),
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
            );
          }),
        ),
      ],
    );
  }
}

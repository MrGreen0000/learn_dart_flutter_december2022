import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'model.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Making contact'),
          ),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 2.0;

    return Form(
      key: _fromKey,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'First Name',
                  validator: () {},
                  onSaved: () {},
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: halfMediaWidth,
                child: MyTextFormField(
                  hintText: 'Last Name',
                  validator: () {},
                  onSaved: () {},
                ),
              ),
            ],
          ),
          MyTextFormField(
            hintText: 'Email',
            isEmail: true,
            validator: () {},
            onSaved: () {},
          ),
          MyTextFormField(
            hintText: 'Password',
            isPassword: true,
            validator: () {},
            onSaved: () {},
          ),
          MyTextFormField(
            hintText: 'Confirm Password',
            isPassword: true,
            validator: () {},
            onSaved: () {},
          ),
          OutlinedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            onPressed: () {
              if (_fromKey.currentState!.validate()) {}
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function() validator;
  final Function() onSaved;
  final bool isPassword;
  final bool isEmail;

  const MyTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator(),
        onSaved: onSaved(),
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}

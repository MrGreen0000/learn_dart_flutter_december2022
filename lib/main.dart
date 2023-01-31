import 'dart:ui';

import 'package:flutter/material.dart';

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
          backgroundColor: Colors.grey[400],
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
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          Column(
            children: [
              const BuildFormContact(
                labelText: 'Prénom',
                hintText: 'Prénom',
                prefixText: '',
                minLines: 1,
                maxLines: 1,
              ),
              const BuildFormContact(
                labelText: 'Prénom',
                hintText: 'Prénom',
                prefixText: '',
                minLines: 1,
                maxLines: 1,
              ),
              const BuildFormContact(
                labelText: 'E-mail',
                hintText: 'email@test.com',
                prefixText: '',
                minLines: 1,
                maxLines: 1,
              ),
              const BuildFormContact(
                labelText: 'Téléphone',
                hintText: 'Téléphone',
                prefixText: '+33',
                minLines: 1,
                maxLines: 1,
              ),
              const BuildFormContact(
                labelText: 'Message',
                hintText: 'Message',
                prefixText: '',
                minLines: 5,
                maxLines: 10,
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Envoyer'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildFormContact extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String prefixText;
  final int minLines;
  final int maxLines;
  const BuildFormContact({
    required this.labelText,
    required this.hintText,
    required this.prefixText,
    required this.minLines,
    required this.maxLines,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
          prefixText: prefixText,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.all(15),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
          // focusedBorder: InputBorder.none,
        ),
        minLines: minLines,
        maxLines: maxLines,
      ),
    );
  }
}

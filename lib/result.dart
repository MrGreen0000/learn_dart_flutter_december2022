import 'package:flutter/material.dart';

import 'model.dart';

class Result extends StatelessWidget {
  Model model;

  Result({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Succeful'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.firstName,
            style: const TextStyle(fontSize: 22.0),
          ),
          Text(
            model.lastName,
            style: const TextStyle(fontSize: 22.0),
          ),
          Text(
            model.email,
            style: const TextStyle(fontSize: 22.0),
          ),
          Text(
            model.password,
            style: const TextStyle(fontSize: 22.0),
          ),
        ],
      ),
    );
  }
}

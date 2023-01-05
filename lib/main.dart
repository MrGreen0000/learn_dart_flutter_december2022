import 'dart:io';
import 'package:flutter/cupertino.dart';
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
      home: const MyHomePage(title: 'Détection de la plateforme'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? material() : cupertino();
  }

  Widget material() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('style Material Design')],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
            label: 'Mon compte',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment,
              color: Colors.white,
            ),
            label: 'Statistiques',
          ),
        ],
        backgroundColor: Colors.red,
      ),
    );
  }

  Widget cupertino() {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'style Cupertino',
              style: TextStyle(fontSize: 20.0, decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
      navigationBar: CupertinoNavigationBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        automaticallyImplyLeading: true,
        middle: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}

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
      home: const MyHomePage(title: 'Buttons'),
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
  String _choixBtn = " Aucun bouton";

  void _quelBouton(String btn) {
    setState(() {
      switch (btn) {
        case 'fab':
          {
            _choixBtn = "FloatingActionButton";
          }
          break;
        case 'elev':
          {
            _choixBtn = "ElevatedButton";
          }
          break;
        case 'outl':
          {
            _choixBtn = "OutlinedButton";
          }
          break;
      }
    });
  }

  void _fabOnPressed() {
    _quelBouton('fab');
  }

  void _elevatedButtonOnpressed() {
    _quelBouton('elev');
  }

  void _outlinedButtonOnPressed() {
    _quelBouton('outl');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Le bouton appuyé est :'),
            Text(
              _choixBtn,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(
                onPressed: _elevatedButtonOnpressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: const Text(
                  'ElevatedButton',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)))),
              onPressed: _outlinedButtonOnPressed,
              child: const Text(
                'OutlinedButton',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fabOnPressed,
        tooltip: "Increment",
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}

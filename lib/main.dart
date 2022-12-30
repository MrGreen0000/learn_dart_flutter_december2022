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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  // Icon _coeur = Icon(
  //   Icons.favorite_border,
  //   color: Colors.white,
  // );
  int _indexSelectionne = 0;
  String _affichage = "0: Accueil";

  void _itemClique(int index) {
    setState(() {
      _indexSelectionne = index;
      switch (_indexSelectionne) {
        case 0:
          {
            _affichage = '$_indexSelectionne: Accueil';
          }
          break;
        case 1:
          {
            _affichage = '$_indexSelectionne: Mon compte';
          }
          break;
        case 2:
          {
            _affichage = '$_indexSelectionne: Statistique';
          }
          break;
      }
    });
  }

  // bool _likeBool = false;

  // int _counter = 10;
  // String _phrase = "Clic avant l'explosion";
  // TextStyle _tS = const TextStyle(
  //   color: Colors.green,
  //   fontSize: 15.0,
  // );
  // Color _couleur = Colors.white;

  // void _decrementCounter() {
  //   setState(() {
  //     if (_counter > 0) {
  //       _counter--;
  //     }

  //     if (_counter == 0) {
  //       _phrase = "BOOM";
  //       _tS = const TextStyle(
  //         color: Colors.red,
  //         fontSize: 30.0,
  //         fontWeight: FontWeight.bold,
  //       );
  //       _couleur = Colors.amber;
  //     }
  //   });
  // }

  // void _likeThis() {
  //   setState(() {
  //     if (_likeBool) {
  //       // ignore: prefer_const_constructors
  //       _coeur = Icon(
  //         Icons.favorite_border,
  //         color: Colors.white,
  //       );
  //       _likeBool = false;
  //     } else {
  //       // ignore: prefer_const_constructors
  //       _coeur = Icon(
  //         Icons.favorite,
  //         color: Colors.white,
  //       );
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(onPressed: null, icon: Icon(Icons.menu_outlined)),
          // actions: <Widget>[IconButton(onPressed: _likeThis, icon: _coeur)],
          // backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   _phrase,
              //   style: _tS,
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              Text(_affichage)
            ],
          ),
        ),
        // backgroundColor: _couleur,
        // floatingActionButton: FloatingActionButton(
        //     onPressed: _likeThis, backgroundColor: Colors.red, child: _coeur),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _decrementCounter,
        //   tooltip: 'Compte à rebours',
        //   child: const Icon(Icons.history),
        // ),
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
          backgroundColor: Colors.blue,
          onTap: _itemClique,
          selectedItemColor: Colors.amber[800],
          iconSize: 40.0,
          selectedFontSize: 20.0,
          currentIndex: _indexSelectionne,
        ));
  }
}

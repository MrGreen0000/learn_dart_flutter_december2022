import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CupertinoTabBarApp());
}

class CupertinoTabBarApp extends StatelessWidget {
  const CupertinoTabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        automaticallyImplyLeading: true,
        middle: Text(
          'Titre de la page',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.add_shopping_cart),
        backgroundColor: Colors.red,
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                label: ('Accueil')),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.group,
                  color: Colors.white,
                ),
                label: ('Mon compte')),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.book,
                color: Colors.white,
              ),
              label: ('Statistiques'),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                    backgroundColor: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$index: Accueil',
                            style: const TextStyle(fontSize: 40.0),
                          )
                        ],
                      ),
                    ));
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                    backgroundColor: Colors.green,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$index: Mon compte',
                            style: const TextStyle(fontSize: 40.0),
                          ),
                        ],
                      ),
                    ));
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                    backgroundColor: Colors.amber,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$index: Statistiques',
                              style: const TextStyle(fontSize: 40.0))
                        ],
                      ),
                    ));
              });
          }
          throw '';
        },
      ),
    );
  }
}

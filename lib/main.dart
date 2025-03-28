import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'pages/myPets.dart';
import 'pages/favoritesPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: MediaQuery.of(context).platformBrightness),
      themeMode: ThemeMode.light, // choosing between theme and darkTheme
      //darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: MyNav(),
    );
  }
}

class MyNav extends StatefulWidget {
  const MyNav({super.key});

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  final TextStyle big = TextStyle(fontSize: 30);

  int pageIndex = 0;
  int tabIndex = 0;

  void updateIndex(int index) {
    setState(() {
      pageIndex = index;
      if (index > 2) {
        tabIndex = 2;
      } else {
        tabIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: pageIndex,
          children: [
            HomePage(),
            MyPets(),
            Favorites(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.amber.shade300,
          indicatorColor: Colors.amber.shade700,
          selectedIndex: tabIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.pets),
              label: 'Pets',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
          onDestinationSelected: (int index) {
            updateIndex(index);
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/my_pets.dart';
import 'pages/favorites_page.dart';
import 'themes/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
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
    final colorTheme = Theme.of(context).colorScheme;
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
          backgroundColor: colorTheme.surface,
          indicatorColor: colorTheme.primary.withValues(
              alpha:
                  0.2), // withOpacity deprecated so probably this is the new way
          selectedIndex: tabIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home, color: colorTheme.secondary),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.pets, color: colorTheme.secondary),
              label: 'Pets',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite, color: colorTheme.secondary),
              label: 'Favorites',
            ),
          ],
          onDestinationSelected: (int index) {
            updateIndex(index);
          },
        ));
  }
}

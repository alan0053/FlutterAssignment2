import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: textTheme.displaySmall?.copyWith(
            color: colorTheme.primary,
          ),
        ),
        backgroundColor: colorTheme.surface,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text("Hi I'm Berk", style: textTheme.displayLarge),
            SizedBox(height: 30),
            Center(
              child: Image.network(
                'https://cdn1.iconfinder.com/data/icons/user-pictures/100/male3-1024.png',
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 30),
            Text("I Love Science-Fiction And Video Games",
                style: textTheme.bodyLarge),
            SizedBox(height: 20),
            Text("I want to get PC and try S.T.A.L.K.E.R 2",
                style: textTheme.bodyLarge),
            SizedBox(height: 20),
            Text("I ❤️ Flutter", style: textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}

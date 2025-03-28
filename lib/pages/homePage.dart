import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextStyle big = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.amber.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 30),
            Text("Hi I'm Berk"),
            SizedBox(height: 20),
            Text("I Love Science-Fiction And Video Games"),
            SizedBox(height: 20),
            Text("I ❤️ Flutter"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyPets extends StatelessWidget {
  MyPets({super.key});
  final TextStyle big = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Pets"),
        backgroundColor: Colors.amber.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Image.network("https://picsum.photos/600/600"),
            SizedBox(height: 16),
            Image.network("https://picsum.photos/600/600"),
            SizedBox(height: 16),
            Image.network("https://picsum.photos/600/600"),
            SizedBox(height: 16),
            Image.network("https://picsum.photos/600/600"),
          ],
        ),
      ),
    );
  }
}

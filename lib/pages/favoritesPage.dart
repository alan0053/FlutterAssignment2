import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  Favorites({super.key});
  final TextStyle big = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        backgroundColor: Colors.amber.shade300,
      ),
      body: Center(
        child: Text("Fav"),
      ),
    );
  }
}

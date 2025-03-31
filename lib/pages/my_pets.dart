import 'package:flutter/material.dart';

class MyPets extends StatelessWidget {
  MyPets({super.key});
  final TextStyle big = TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Pets",
          style: textTheme.displaySmall?.copyWith(
            color: colorTheme.primary,
          ),
        ),
        backgroundColor: colorTheme.surface,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Center(
              child: Text("🦅 Ikaros 🦅", style: textTheme.displayMedium),
            ),
            SizedBox(height: 16),
            Image.network(
                "https://preview.redd.it/back-off-chikaros-what-a-gorgeous-eagle-ikaros-is-i-swear-v0-ivo0fmgzhokc1.jpeg?auto=webp&s=f8c0b89b63d233ba711a365c3c8154c8d60b099d"),
            SizedBox(height: 16),
            Image.network(
                "https://static.wikia.nocookie.net/assassinscreed/images/d/d6/ACOD_Ikaros.jpg/revision/latest/scale-to-width-down/1000?cb=20181031100651"),
            SizedBox(height: 16),
            Image.network("https://i.quotev.com/i4c5ubvaoftq.jpg"),
            SizedBox(height: 16),
            Image.network(
                "https://preview.redd.it/j2x5e3hkg9s11.jpg?width=1920&format=pjpg&auto=webp&s=220cf36717712377e28bf3291ae52aa75fb43390"),
          ],
        ),
      ),
    );
  }
}

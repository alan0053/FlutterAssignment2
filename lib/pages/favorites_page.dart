import 'package:flutter/material.dart';
import '../models/fav_movies_model.dart';
import 'details_page.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: textTheme.displaySmall?.copyWith(
            color: colorTheme.primary,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: favMovies.length,
        itemBuilder: (context, index) {
          final movie = favMovies[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                movie['title'] ?? 'N/A',
                style: textTheme.bodyLarge,
              ),
              leading: Icon(Icons.movie, color: colorTheme.secondary),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: colorTheme.error,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => DetailsPage(
                        movie: movie,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.movie});
  final Map<String, String> movie;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        movie['title'] ?? 'Details',
        style: textTheme.displaySmall?.copyWith(
          color: colorTheme.primary,
        ),
      )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                movie['title'] ?? '',
                style: textTheme.displayMedium
                    ?.copyWith(color: colorTheme.onError),
              ),
              const SizedBox(height: 20),
              Text('Year: ${movie['year']}', style: textTheme.bodyLarge),
              const SizedBox(height: 12),
              Text('Genre: ${movie['genre']}', style: textTheme.bodyLarge),
              const SizedBox(height: 12),
              Text('Rating: ${movie['rating']}', style: textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    );
  }
}

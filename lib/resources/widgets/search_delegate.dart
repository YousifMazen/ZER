import 'package:flutter/material.dart';


class CustomSearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'zhangar'
  ];

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null); // Close searchbar
      },
      icon: const Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null); // Close searchbar
          } else {
            query = ''; // Clear searchbar
          }
        },
        icon: const Icon(
          Icons.clear,
        ),
      ),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    // Result page
    // query => contains searched text
    return Column(
      children: [
        Text(
          query,
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Update suggestions when start searching
    List<String> suggestions = searchResults.where((element) {
      final String result = element.toLowerCase();
      final String input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final String suggestion = suggestions[index];

          return ListTile(
            title: Text(
              suggestion,
            ),
            onTap: () {
              query = suggestion;

              showResults(context); // Will call buildResults() method
            },
          );
        });
  }
}

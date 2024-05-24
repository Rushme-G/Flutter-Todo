import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieSearch(),
    );
  }
}

class MovieSearch extends StatefulWidget {
  @override
  _MovieSearchState createState() => _MovieSearchState();
}

class _MovieSearchState extends State<MovieSearch> {
  TextEditingController _controller = TextEditingController();
  List<dynamic> _movies = [];

  Future<void> _searchMovies(String query) async {
    final response = await http.get(
        Uri.parse('https://yts.mx/api/v2/list_movies.json?query_term=$query'));

    if (response.statusCode == 200) {
      setState(() {
        _movies = json.decode(response.body)['data']['movies'];
      });
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Search movies...',
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _searchMovies(_controller.text);
              },
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_movies[index]['title']),
            subtitle: Text('Rating: ${_movies[index]['rating']}'),
            leading: Image.network(_movies[index]['medium_cover_image']),
          );
        },
      ),
    );
  }
}

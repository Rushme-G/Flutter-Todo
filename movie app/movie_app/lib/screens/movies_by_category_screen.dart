import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie/widgets/movies/movie_tile.dart';
// import 'package:provider/provider.dart';

import '../../models/movie_model.dart';
// import '../../providers/movie_provider.dart';
import 'package:http/http.dart' as http;

class MoviesByCategoryScreen extends StatefulWidget {
  final String category;

  const MoviesByCategoryScreen({super.key, required this.category});

  @override
  State<MoviesByCategoryScreen> createState() => _MoviesByCategoryScreenState();
}

class _MoviesByCategoryScreenState extends State<MoviesByCategoryScreen> {
  bool loading = true;
  List<MovieModel> movieList = [];

  @override
  void initState() {
    print('print at first');
    loadMoviesByCategoryScreen();
  }

  Future<void> loadMoviesByCategoryScreen() async {
    final res = await http.get(Uri.parse(
        // 'https://yts.mx/api/v2/movie_suggestions.json?movie_id=' + id));
        'https://yts.mx/api/v2/list_movies.json?genre=${widget.category}'));
    print(jsonDecode(res.body)['data']['movies']);
    List<MovieModel> tempMovies = [];

    for (final movie in jsonDecode(res.body)['data']['movies']) {
      tempMovies.add(MovieModel.fromJson(movie));
    }

    // print(tempMovies);
    setState(() {
      movieList = tempMovies;
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<MovieModel> movieList =Provider.of<MovieProvider>(context, listen: false).getMoviesByCategory(widget.category);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: movieList.length == 0
                  ? Center(
                      child: Text('No movies available for this category'),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: movieList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MovieTile(movie: movieList[index]);
                        // return ListTile(
                        //   title: Text(movieList[index].title, ),
                        //   // subtitle: Text(movieList[index].year.toString(), style: TextStyle(
                        //   subtitle: Text(
                        //     movieList[index].year.toString(),
                        //     style: TextStyle(),
                        //   ),
                        //   leading: ClipRRect(
                        //     borderRadius: BorderRadius.circular(12),
                        //     child: Image.network(
                        //       movieList[index].img,
                        //       height: 80,
                        //       width: 80,
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        //   trailing: Text(
                        //     movieList[index].rating.toString(),
                        //     style: TextStyle(fontSize: 24),
                        //   ),
                        // );
                      }),
            ),
    );
  }
}

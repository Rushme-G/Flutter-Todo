import 'package:flutter/material.dart';
// import 'package:movie/providers/trending_provider.dart';
import 'package:movie/providers/movie_provider.dart';
import 'package:movie/widgets/movies/movie_tile.dart';
import 'package:provider/provider.dart';

import '../../models/movie_model.dart';

class TrendingMovieScreen extends StatefulWidget {
  @override
  State<TrendingMovieScreen> createState() => _TrendingMovieScreenState();
}

class _TrendingMovieScreenState extends State<TrendingMovieScreen> {
  @override
  void initState() {
    print('prints at first');
    Provider.of<MovieProvider>(context, listen: false).loadMovies();
    // Provider.of<TrendingProvider>(context, listen: false).loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList = Provider.of<MovieProvider>(context).movies;
    // Provider.of<TrendingProvider>(context, listen: false).loadMovies();

    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return MovieTile(movie: movieList[index]);
            // return ListTile(
            //   title: Text(
            //     movieList[index].title,
            //   ),
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
    );
  }
}

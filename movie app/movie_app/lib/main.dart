import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hoc/home_layout.dart';
import 'providers/movie_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MovieProvider())],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
            useMaterial3: true,
            //Adding local assets for fonts
            fontFamily: "Poppins",
          ),
          // home: HomeMovieScreen(),
          initialRoute: '/',
          routes: {
            '/': (context) => HomeLayout(),
            // '/trending': (context)=> TrendingMovieScreen(),
            // '/categories': (context)=> CategoriesMovieScreen(),
          }),
    );
  }
}

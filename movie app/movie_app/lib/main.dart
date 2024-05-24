import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hoc/home_layout.dart';
import 'providers/count_provider.dart';
import 'providers/movie_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we can use one provider at a time but since, there are always different modules
    // we tend to use MultiProvider widget
    return MultiProvider(
      providers: [
        // providers should be categorized well to keep track and separate
        // all the modules and their respective variables
        ChangeNotifierProvider(create: (context) => CountProvider()),
        ChangeNotifierProvider(create: (context) => MovieProvider())
      ],
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

// import 'package:athangtodo2/screens/Addtask.dart';
// import 'package:athangtodo2/screens/TaskScreens/AddTask.dart';
import 'package:athangtodo2/screens/TaskScreens/HomeTask.dart';
import 'package:athangtodo2/screens/TaskScreens/LoginTask.dart';
// import 'package:athangtodo2/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: home(),
      // home: Addtask(),
      // home: Logintask(),

      initialRoute: '/',

      routes: {
        '/': (context) => Logintask(),
        // '/HomeTask': (context) => HomeTask(),
        '/HomeTask': (context) => HomeTask(),
        // '/home': (context) => Addtask(),
      },
    );
  }
}

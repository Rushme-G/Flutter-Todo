import 'package:expenses/screens/auth/login_screen.dart';
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

      home: LoginScreen(),

      // initialRoute: '/',

      // routes: {
      //   '/': (context) => Logintask(),
      //   // '/HomeTask': (context) => HomeTask(),
      //   '/HomeTask': (context) => HomeTask(),
      //   // '/home': (context) => Addtask(),
      // },
    );
  }
}

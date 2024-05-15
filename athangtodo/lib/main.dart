import 'package:athangtodo/screen/PlantLanding.dart';
// import 'package:athangtodo/screen/Aurorahome.dart';
// import 'package:athangtodo/screen/Gfit.dart';
// import 'package:athangtodo/screen/Lotion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PlantLanding(),
      // home: Aurorahome(),
      // home: Gfit(),
      // home: Lotion(),
    );
  }
}

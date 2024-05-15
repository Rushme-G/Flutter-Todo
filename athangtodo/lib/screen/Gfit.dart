import 'package:athangtodo/widgets/Gofit/Gofit.dart';
import 'package:athangtodo/widgets/Gofit/GofitSecond.dart';
import 'package:athangtodo/widgets/Gofit/GofitThird.dart';
// import 'package:athangtodo/widgets/Gofit/third.dart';
import 'package:flutter/material.dart';

class Gfit extends StatelessWidget {
  const Gfit({super.key});

  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'G*Fit.',
          style: TextStyle(
            fontSize: 24.0, // Font size
            fontWeight: FontWeight.bold, // Font weight
            letterSpacing: 2.0, // Letter spacing
          ),
        ),
        actions: [Icon(Icons.menu)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gofit(),
            GofitSecond(),
            GofitThird(),
            GofitSecond(),
            GofitThird(),
            GofitSecond(),
            GofitThird(),
          ],
        ),
      ),
    );
  }
}

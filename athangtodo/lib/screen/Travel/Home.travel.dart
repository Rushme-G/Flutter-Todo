import 'package:athangtodo/widgets/Travel/PopularT.dart';
import 'package:athangtodo/widgets/Travel/Recommended.dart';
import 'package:flutter/material.dart';

class HomeTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // children: [PopularTravel(), RecommendedTravel()],
            children: [PopularT(), Recommended()],
          ),
        ));
  }
}

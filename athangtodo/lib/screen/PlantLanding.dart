import 'package:athangtodo/widgets/PlantLanding/RecommendedPlants.dart';
import 'package:athangtodo/widgets/PlantLanding/Searchbar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class PlantLanding extends StatelessWidget {
  const PlantLanding({super.key});

  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discovery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Searchbar(), RecommendedPlants()],
        ),
      ),
    );
  }
}

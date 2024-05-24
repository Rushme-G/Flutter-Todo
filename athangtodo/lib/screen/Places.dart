import 'package:athangtodo/widgets/Places/Header.dart';
import 'package:athangtodo/widgets/Places/PSearchBar.dart';
import 'package:athangtodo/widgets/Places/PlaceSlider.dart';
import 'package:flutter/material.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [const Header(), PSearchbar(), PlaceSlider()],
        ),
      ),
    );
  }
}

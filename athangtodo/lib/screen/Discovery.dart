// import 'package:athang_flutter/widgets/discovery/ButtonContainer.dart';
// import 'package:athang_flutter/widgets/discovery/ForContainer.dart';
// import 'package:athang_flutter/widgets/discovery/Header.dart';
// import 'package:athang_flutter/widgets/discovery/JourneyContainer.dart';
// import 'package:athang_flutter/widgets/discovery/Search.dart';
import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Column(
            children: [
              // Header(),
              // Search(),
              // ForContainer(),
              // ButtonContainer(),
              // JourneyContainer()
            ],
          ),
        ),
      ),
    );
  }
}

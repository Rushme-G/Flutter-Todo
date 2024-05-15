import 'package:athangtodo/widgets/Lotion/LotionFifth.dart';
import 'package:athangtodo/widgets/Lotion/LotionFirst.dart';
import 'package:athangtodo/widgets/Lotion/LotionFourth.dart';
import 'package:athangtodo/widgets/Lotion/LotionSecond.dart';
import 'package:athangtodo/widgets/Lotion/LotionThird.dart';
import 'package:flutter/material.dart';

class Lotion extends StatelessWidget {
  const Lotion({super.key});

  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_circle_left_outlined),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LotionFirst(),
            LotionSecond(),
            LotionThird(),
            LotionFourth(),
            LotionFifth()
          ],
        ),
      ),
    );
  }
}

import 'package:athangtodo/widgets/SmallProductCard.dart';
import 'package:athangtodo/widgets/productcard.dart';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.amber, title: const Text('Forest')),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello User',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Hello User',
                  style: TextStyle(fontSize: 15),
                ),
                ProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                SmallProductCard(),
                SmallProductCard(),
              ],
            )),
      ),
    );
  }
}

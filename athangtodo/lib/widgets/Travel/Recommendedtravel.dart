import 'package:flutter/material.dart';

import 'MediumTravelCard.dart';

class RecommendedTravel extends StatelessWidget {
  const RecommendedTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  MediumTravelCard(title: 'Title 1'),
                  MediumTravelCard(title: 'Title 2'),
                ],
              ),
            )
          ],
        ));
  }
}

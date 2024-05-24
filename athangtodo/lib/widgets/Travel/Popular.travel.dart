import 'package:athangtodo/widgets/Travel/PopularCard.travel.dart';
import 'package:flutter/material.dart';

class PopularTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Places'),
              Text('View more'),
            ],
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularCardTravel(),
                  PopularCardTravel(),
                  PopularCardTravel(),
                  PopularCardTravel(),
                  PopularCardTravel(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:athangtodo/modules/Places.module.dart';
// import 'package:athangtodo/widgets/Travel/PopularCard.travel.dart';
import 'package:athangtodo/widgets/Travel/PopularCardT.dart';
import 'package:flutter/material.dart';

class PopularT extends StatelessWidget {
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img:
            "https://cdn.pixabay.com/photo/2023/10/16/10/57/fountain-8318963_1280.jpg",
        title: "title 1",
        description: "description 1"),
    PlaceCardModel(
        img:
            "https://cdn.pixabay.com/photo/2017/12/23/19/53/lost-places-3035877_1280.jpg",
        title: "title 2",
        description: "description 2"),
    PlaceCardModel(
        img:
            "https://cdn.pixabay.com/photo/2016/07/03/17/48/lost-places-1495150_1280.jpg",
        title: "title 3",
        description: "description 3")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Places',
                style: TextStyle(fontSize: 24),
              ),
              Text('View more'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.only(left: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: placesList.map((PlaceCardModel el) {
                return PopularCardT(place: el);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}

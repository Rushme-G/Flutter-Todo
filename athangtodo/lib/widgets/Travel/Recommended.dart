import 'package:athangtodo/modules/Places.module.dart';
import 'package:flutter/material.dart';

import 'Medium.dart';

class Recommended extends StatelessWidget {
  List<String> places = ["China", "India", "Indonesia", "Bhutan"];
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img:
            "https://cdn.pixabay.com/photo/2016/02/10/00/07/bench-1190768_1280.jpg",
        description: "description 1",
        title: "title 1"),
    PlaceCardModel(
        img:
            "https://cdn.pixabay.com/photo/2018/04/20/22/18/factory-3337207_1280.jpg",
        description: "description 2",
        title: "title 2"),
    PlaceCardModel(
        img:
            "https://cdn.pixabay.com/photo/2022/05/04/09/13/bordeaux-7173548_1280.jpg",
        description: "description 1",
        title: "title 3"),
  ];

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
                children: placesList.map((PlaceCardModel el) {
                  return Medium(
                    title: el.title,
                    url: el.img,
                    description: el.description,
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}

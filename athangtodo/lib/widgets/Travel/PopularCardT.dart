import 'package:athangtodo/modules/Places.module.dart';
import 'package:athangtodo/screen/Travel/DetailsT.dart';
import 'package:flutter/material.dart';

class PopularCardT extends StatelessWidget {
  PlaceCardModel place;
  PopularCardT({required this.place});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          // MaterialPageRoute(builder: (context) => DetailsTravel()),
          MaterialPageRoute(
              builder: (context) => DetailsT(
                    place: place,
                  )),
        );
      },
      child: Container(
        height: 200,
        width: 200,
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                place.img,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueAccent,
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          height: 100,
          child: Column(
            children: [
              Text(
                place.title,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

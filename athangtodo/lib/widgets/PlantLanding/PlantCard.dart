import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.blueGrey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: 200,
            margin: EdgeInsets.only(bottom: 16),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/06/12/01/22/lotus-8057438_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Indoor Plant',
            style: TextStyle(fontSize: 16),
          ),
          Text('Name of the Plant: Herb',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GofitSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Image.network(
              "https://media.istockphoto.com/id/1698211768/photo/new-year-2024-with-new-ambitions-challenge-plans-goals-and-visions-sports-girl-who-wants-to.jpg?s=1024x1024&w=is&k=20&c=S9_45XD-OoDQNXv8t9CiUV-gngvo54GZJxxI9N7DJts=",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LotionSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amberAccent,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                  ),
                  Text('4.8')
                ],
              ),
            ]));
  }
}

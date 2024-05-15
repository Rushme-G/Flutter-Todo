import 'package:flutter/material.dart';

class LotionFourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$65.00',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/100ml',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.remove,
                    size: 30,
                  ),
                  Text(
                    '  1  ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.add,
                    size: 20,
                  ),
                ],
              ),
            ]));
  }
}

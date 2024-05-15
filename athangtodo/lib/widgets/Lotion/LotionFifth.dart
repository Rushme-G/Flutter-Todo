import 'package:flutter/material.dart';

class LotionFifth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: Icon(Icons.favorite_border),
              color: Colors.black54,
              onPressed: () {
                // Handle heart button press
              },
            ),
          ),
          SizedBox(width: 16),
          Expanded(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, // Background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {
              //Handeled
            },
            child: Text(
              'Add to cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )),
        ],
      ),
    );
  }
}

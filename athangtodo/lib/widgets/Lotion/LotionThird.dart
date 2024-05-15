import 'package:flutter/material.dart';

class LotionThird extends StatelessWidget {
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
            // height: 200,
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.only(right: 20, left: 10),
            child: Text(
                'Text Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text ext Text Text Text Text Text...'),
          ),
        ],
      ),
    );
  }
}

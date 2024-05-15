import 'package:flutter/material.dart';

class LotionFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      // margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2023/04/16/08/35/skincare-7929470_1280.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Body Lotion',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// class LotionFirst extends StatelessWidget {
//   final List<String> imageUrls;

//   ImageSlider({required this.imageUrls});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         PageView.builder(
//           itemCount: imageUrls.length,
//           itemBuilder: (context, index) {
//             return Image.network(
//               imageUrls[index],
//               fit: BoxFit.cover,
//             );
//           },
//         ),
//         Positioned(
//           bottom: 10.0,
//           left: 0,
//           right: 0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               imageUrls.length,
//               (index) => Container(
//                 margin: EdgeInsets.symmetric(horizontal: 5.0),
//                 width: 10.0,
//                 height: 10.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.white.withOpacity(index == 0 ? 0.9 : 0.4),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

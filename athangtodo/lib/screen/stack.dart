// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stack Example'),
//         ),
//         body: Center(
//           child: Container(
//             width: 300,
//             height: 200,
//             child: Stack(
//               children: [
//                 // Background image
//                 Image.network(
//                   'https://via.placeholder.com/300x200',
//                   width: 300,
//                   height: 200,
//                   fit: BoxFit.cover,
//                 ),
//                 // Semi-transparent overlay
//                 Container(
//                   width: 300,
//                   height: 200,
//                   color: Colors.black.withOpacity(0.3),
//                 ),
//                 // Positioned text
//                 Positioned(
//                   left: 20,
//                   bottom: 20,
//                   child: Text(
//                     'Hello, Stack!',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

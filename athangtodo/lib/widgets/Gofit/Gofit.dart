import 'package:flutter/material.dart';

class Gofit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dare to ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'innovate',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        'with',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        child: const Text(
                          'GoFit',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 40,
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 40,
                  ),
                ],
              ),
            ]));
  }
}






// import 'package:flutter/material.dart';

// class Gofit extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 16),
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: const Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text('Dare to innovate with Gofit'),
//           // Text('Gofit'),
//           const Row(children: [
//             Icon(Icons.arrow_back),
//             Icon(Icons.arrow_forward),
//           ]),
//         ],
//       ),
//     );
//   }
// }

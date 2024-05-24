import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.all(8.0),
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // padding: const EdgeInsets.only(left: 8),
            // color: Colors.red,
            child: const Column(
              children: [
                Text(
                  'Discovery',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  'You are in Prague',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(2.0),
              // color: Colors.green,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  height: 60,
                  "https://cdn.pixabay.com/photo/2021/08/31/11/58/woman-6588614_1280.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          // Container(
          //   color: Colors.amber,
          //   child: Column(
          //     children: [
          //       PSearchbar(),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Aurorahome extends StatelessWidget {
  const Aurorahome({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // backgroundColor: Color.fromARGB(255, 255, 156, 7),
      //     title: const Text('AURORA')),
      // title: const Text('AURORA'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // color: Colors.amber,
              height: 100,
              margin: EdgeInsets.only(bottom: 25, top: 90),
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'AURORA',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              color: Colors.amber,
              height: 300,
              margin: EdgeInsets.only(bottom: 16),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2021/08/31/11/58/woman-6588614_1280.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 16),
              padding: EdgeInsets.only(right: 30, left: 30),
              // alignment: Alignment.center,
              child: Text(
                'Plant on Display Plant on Display Plant on Display Plant on Display Plant on Display Plant on Display Plant on Display Plant on Display Plant on Display Plant on Display',
                style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              // color: Colors.amber,
              height: 100,
              // width: 200,
              margin: EdgeInsets.only(bottom: 5, top: 0, right: 50, left: 50),
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Row(
                children: [
                  Text(
                    'GET STARTED    ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Color.fromARGB(255, 255, 156, 7),
      //     title: const Text('Title')),
      body: Container(
        height: 1000,
        width: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 450,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              alignment: Alignment.center,
              child: Text(
                'Plant on Display',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Plant',
                  style: TextStyle(fontSize: 32),
                ),
                Icon(Icons.search)
              ],
            ),
            Container(
              child: Text(
                'It is a popular flowering plant known for its fragrant purple flowers',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

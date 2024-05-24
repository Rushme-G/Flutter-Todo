import 'package:flutter/material.dart';

// Stateful widgets can rerender the screen when the data is reloaded
class home extends StatefulWidget {
  @override
  State<home> createState() => _TodohomeState();
}

class _TodohomeState extends State<home> {
  String title = "Hello";

  num count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Text(
            // title.toString(),
            count.toString(),
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // we need to use setState, an inbuilt method to change the variable
          // changing it directly will not rerender the screen
          setState(() {
            // title = "something new";
            count++;
          });

          //====start: text displayed in the floating button====
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(
          //       title,
          //       style: TextStyle(fontSize: 32),
          //     ),
          //   ),
          // );
          //====end: text displayed in the floating button====
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

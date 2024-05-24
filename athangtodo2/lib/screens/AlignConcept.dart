import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Align in Stack Example'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                color: Colors.blue[100],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: Center(
                    child: Text('TL'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: Center(
                    child: Text('TR'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.orange,
                  child: Center(
                    child: Text('BL'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.purple,
                  child: Center(
                    child: Text('BR'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Center(
                    child: Text('Center'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

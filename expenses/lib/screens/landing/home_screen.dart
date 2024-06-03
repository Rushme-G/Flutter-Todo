import 'package:expenses/plugins/local_shared_preferences.dart';
import 'package:expenses/screens/add_transaction/add_transaction.dart';
import 'package:expenses/widgets/landing/summary_accounts.dart';
import 'package:expenses/widgets/landing/summary_home.dart';
import 'package:expenses/widgets/landing/summary_transactions.dart';
import 'package:flutter/material.dart';

import '../splash_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  //====action button
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  //====action button

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: [
            SummaryHome(),
            SummaryAccounts(),
            SummaryTransactions(),
            Container(
                // child: Column(
                //   children: [
                //     FloatingActionButton(
                //       onPressed: _incrementCounter,
                //       tooltip: 'Increment',
                //       child: Icon(Icons.add),
                //     ),
                //   ],
                // ),
                )
          ],
        ),
      ),
      Positioned(
        bottom: 16.0,
        right: 16.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddTranscation()),
            );
          },
          tooltip: 'Navigate',
          child: Icon(Icons.add),
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0), // Change the shape
          ),
          elevation: 5.0, // Change the elevation
        ),
      ),
    ]);
  }
}

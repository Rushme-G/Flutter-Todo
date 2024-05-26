import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/plugins/local_shared_preferences.dart';
import 'package:expenses/screens/splash_screen.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'Home',
              style: TypoStyles().kPageHeader,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              logoutUser();
            },
            child: Text('Logout'),
          )
        ],
      ),
    );
  }
}

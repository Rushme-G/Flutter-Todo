// import 'package:athangtodo2/widgets/Task/LoginForm.dart';
import 'package:expenses/widgets/auth/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                // color: const Color.fromARGB(255, 10, 36, 81),
                height: MediaQuery.of(context).size.height * .55,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 36),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        // Container(
                        //   child: Image.asset(
                        //     'assets/login_logo.jpg',
                        //     width: 200,
                        //     height: 200,
                        //   ),
                        // )
                        // Text('Get Started',
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 36,
                        //         fontWeight: FontWeight.bold)),
                        // Text('Enter details to login',
                        //     style: TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 24,
                        //         fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    height: 350,
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.normal)
                        ]),
                    child: Loginform(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

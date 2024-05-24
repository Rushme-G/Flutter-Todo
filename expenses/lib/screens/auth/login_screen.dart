import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../landing/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> loginUser() async {
    try {
      final res = await http.post(
        Uri.parse('http://10.254.251.126:3030/authentication'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          // 'username': _username.text,
          'username': 'admin@expense.com',
          // 'password': _password.text
          'password': 'admin'
        }),
      );
      print(jsonDecode(res.body)['data']);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          '_TOKEN', jsonDecode(res.body)['data']['accessToken']);
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Image.asset('assets/images/logo.png',
                            height: 100, fit: BoxFit.contain)),
                    TextFormField(
                      controller: _username,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Username'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: TextFormField(
                        controller: _password,
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          loginUser();
                        },
                        child: Text('Login'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 48,
                      margin: EdgeInsets.only(top: 8),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            foregroundColor: Colors.redAccent),
                        onPressed: () {},
                        child: Text('Don\'t have an account? Sign up.'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}








// // import 'package:athangtodo2/widgets/Task/LoginForm.dart';
// import 'package:expenses/widgets/auth/login_form.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.topCenter,
//               child: Container(
//                 width: double.infinity,
//                 // color: const Color.fromARGB(255, 10, 36, 81),
//                 height: MediaQuery.of(context).size.height * .55,
//               ),
//             ),
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(horizontal: 36),
//               alignment: Alignment.center,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(bottom: 16),
//                     child: Column(
//                       children: [
//                         // Container(
//                         //   child: Image.asset(
//                         //     'assets/login_logo.jpg',
//                         //     width: 200,
//                         //     height: 200,
//                         //   ),
//                         // )
//                         // Text('Get Started',
//                         //     style: TextStyle(
//                         //         color: Colors.white,
//                         //         fontSize: 36,
//                         //         fontWeight: FontWeight.bold)),
//                         // Text('Enter details to login',
//                         //     style: TextStyle(
//                         //         color: Colors.white,
//                         //         fontSize: 24,
//                         //         fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 350,
//                     padding: EdgeInsets.all(16),
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(16),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.black12,
//                               blurRadius: 8,
//                               spreadRadius: 4,
//                               blurStyle: BlurStyle.normal)
//                         ]),
//                     child: Loginform(),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

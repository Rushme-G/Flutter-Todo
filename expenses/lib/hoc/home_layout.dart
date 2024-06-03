import 'package:expenses/screens/account/account.dart';
import 'package:expenses/screens/account/account_screen.dart';
import 'package:expenses/screens/add_transaction/transactions.dart';
import 'package:expenses/screens/landing/home_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectedIndex = 0;

  List<String> titles = ['Home', 'Accounts', 'Account', 'Transactions'];
  // List<String> titles = ['Home'];
  List<Widget> screens = [
    HomeScreen(),
    AccountScreen(),
    Account(),
    Transactions(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 10,
        title: Text(
          titles[_selectedIndex],
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // leading: IconButton(
        //   icon: Image.asset(
        //       'assets/images/logo.png'), // Replace 'assets/logo.png' with your logo image path
        //   onPressed: () {
        //     // Add your logo tap action here
        //   },
        // ),
        // actions: [
        //   IconButton(
        //     icon: ClipRRect(
        //         borderRadius: BorderRadius.circular(100),
        //         child: Image.asset('assets/images/profile.jpeg')),
        //     onPressed: () {
        //       // Add your logo tap action here
        //     },
        //   )
        // ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          print('here');
        },
        child: SingleChildScrollView(
          child: screens[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val) {
          setState(() {
            _selectedIndex = val;
          });
        },
        selectedItemColor: Colors
            .deepOrangeAccent, // Color of the selected item icon and label
        unselectedItemColor:
            Colors.grey, // Color of the unselected item icons and labels
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list), label: 'Transactions'),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Accounts'),
        ],
      ),
    );
  }
}

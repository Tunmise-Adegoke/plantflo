import 'package:flutter/material.dart';

import 'home.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}
int _selectedIndex = 0;
class _MainScreenState extends State<MainScreen> {
  List<Widget> pageList = <Widget>
  [
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[0],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/home.png'),label: 'Home'),
          BottomNavigationBarItem(icon: Image.asset('assets/images/plant_pot.png'),label: 'My Plants'),
          BottomNavigationBarItem(icon: Image.asset('assets/images/clipboard.png'),label: 'Todo list'),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex =index;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.black,
        iconSize: 8,
      ),
    );
  }
}

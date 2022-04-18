import 'package:flutter/material.dart';
import 'package:plantflo/screens/add_plants.dart';
import 'package:plantflo/screens/home.dart';
import 'package:plantflo/screens/new_plant_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex = 0;
  final screens = [
    Home(),
    MyPlantScreen(),
    NewPlantScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.grass), label: 'My Plants'),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add Plants'),
          ],
          backgroundColor: Color(0xfffcf1ef),
          selectedItemColor: Color(0xffa1ba9b),
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() {
            _currentIndex = index;
          }),
      ),
    );
  }
}

import 'package:day_8/pages/animation_page.dart';
import 'package:day_8/pages/home_page.dart';
import 'package:day_8/pages/profile_page.dart';
import 'package:day_8/pages/responsive_design_page.dart';
import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {

  int _currentIndex = 0;
  final _pages = [
    HomePage(),
    AnimationPage(),
    ResponsizePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF5364F4),
        unselectedItemColor: const Color(0xFFC4C4C4),
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.animation),label: "Animation"),
          BottomNavigationBarItem(icon: Icon(Icons.add_reaction_sharp),label: "Responsive"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}

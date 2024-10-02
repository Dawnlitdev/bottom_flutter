import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/p1.dart';
import 'pages/p2.dart';
import 'pages/p3.dart';

class Material3BottomNav extends StatefulWidget {
  const Material3BottomNav({Key? key}) : super(key: key);

  @override
  State<Material3BottomNav> createState() => _Material3BottomNavState();
}

class _Material3BottomNavState extends State<Material3BottomNav> {
  int _selectedIndex = 0;

  final _pages = [
    const HomePage(),
    const P1(),
    const P2(),
    const P3(),
  ];

  final _navBarItems = [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home_rounded),
      label: 'Home',
    ),
    NavigationDestination(
      icon: Icon(Icons.bookmark_border_outlined),
      selectedIcon: Icon(Icons.bookmark_rounded),
      label: 'Bookmarks',
    ),
    NavigationDestination(
      icon: Icon(Icons.shopping_bag_outlined),
      selectedIcon: Icon(Icons.shopping_bag),
      label: 'Cart',
    ),
    NavigationDestination(
      icon: Icon(Icons.person_outline_rounded),
      selectedIcon: Icon(Icons.person_rounded),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Bar')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: _navBarItems,
      ),
    );
  }
}
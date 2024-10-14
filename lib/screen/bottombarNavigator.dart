import 'package:flutter/material.dart';
import 'package:shopping/screen/home.dart';
import 'package:shopping/configuration/theme.dart';

class BottomBarNavigator extends StatefulWidget {
  const BottomBarNavigator({super.key});

  @override
  State<BottomBarNavigator> createState() => _BottomBarNavigatorState();
}

class _BottomBarNavigatorState extends State<BottomBarNavigator> {
  int currentIndex = 0;
  List<Widget> pages = [
    const Home(),
    const Center(child: Text('WISHLIST')),
    const Center(child: Text('ORDER')),
    const Center(child: Text('ACCOUNT')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: App_theme.primary,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined),
            label: 'WISHLIST',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'ORDER',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'ACCOUNT',
          ),
        ],
      ),
    );
  }
}

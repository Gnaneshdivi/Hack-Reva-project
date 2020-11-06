import 'package:PLANTIFY/navbar.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

Color backgroundColor = Color.fromRGBO(130, 205, 113, 1);

class _MainWidgetState extends State<MainWidget> {
  @override
  int _selectedTab = 0;
  Widget build(BuildContext context) {
    List values = ['home', 'favorite', 'search', 'person'];

    void _handleIndexChanged(int i) {
      setState(() {
        _selectedTab = i;
      });
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _selectedTab,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(icon: 'assets/ns.png', name: 'NEW PLANT'),

          /// Likes
          DotNavigationBarItem(icon: 'assets/np.png', name: 'MY PLANTS'),

          /// Search
          DotNavigationBarItem(icon: 'assets/nw.png', name: 'NURTURE'),

          /// Profile
          DotNavigationBarItem(icon: 'assets/PB.png', name: 'PLANT BANK'),
        ],
      ),
    );
  }
}

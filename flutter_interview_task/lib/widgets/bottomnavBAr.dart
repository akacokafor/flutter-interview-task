import 'package:flutter/material.dart';
import 'package:flutter_interview_task/constants.dart';

class BottomNavBAr extends StatefulWidget {
  const BottomNavBAr({
    Key? key,
    required this.pages,
  }) : super(key: key);

  final List<Widget> pages;

  @override
  _BottomNavBArState createState() => _BottomNavBArState();
}

class _BottomNavBArState extends State<BottomNavBAr> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: textGreyColor),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(AssetImage("assets/icons/Home.png")),
          ),
          BottomNavigationBarItem(
            label: 'Moments',
            icon: ImageIcon(AssetImage("assets/icons/User.png")),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: ImageIcon(AssetImage("assets/icons/Send.png")),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: ImageIcon(AssetImage("assets/icons/Profile.png")),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

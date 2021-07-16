import 'package:flutter/material.dart';
import 'package:woo_dog/ui/bottom-navs/home.dart';
import 'package:woo_dog/utils/colors.dart';

class Index extends StatefulWidget {

  static const String id = 'index_page';

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {

  /// Current index of the bottom navigation
  int currentIndex = 0;

  /// Navigating classes for the bottom navigation
  final List<Widget> _children = [
    Home(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          color: kBlackColor,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.0041
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
          color: Color(0xFFAEAEB2),
          fontSize: 10,
          fontWeight: FontWeight.bold,
          letterSpacing: -0.0041
        ),
        selectedItemColor: kBlackColor,
        unselectedItemColor: Color(0xFFAEAEB2),
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/home.png',
              width: 24,
              height: 24,
              color: Color(0xFFAEAEB2),
              fit: BoxFit.contain,
            ),
            activeIcon: Image.asset(
              'assets/images/home.png',
              width: 24,
              height: 24,
              color: kBlackColor,
              fit: BoxFit.contain,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/moments.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            activeIcon: Image.asset(
              'assets/images/moments.png',
              width: 24,
              height: 24,
              color: kBlackColor,
              fit: BoxFit.contain,
            ),
            label: 'Moments',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/chat.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Color(0xFFE73A40),
                      shape: BoxShape.circle
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Image.asset(
              'assets/images/chat.png',
              width: 24,
              height: 24,
              color: kBlackColor,
              fit: BoxFit.contain,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profile.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            activeIcon: Image.asset(
              'assets/images/profile.png',
              width: 24,
              height: 24,
              color: kBlackColor,
              fit: BoxFit.contain,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  /// Navigating to other bottom tabs
  void onTabTapped(int index) {
    if(!mounted) return;
    setState(() {
      currentIndex = index;
    });
  }
}

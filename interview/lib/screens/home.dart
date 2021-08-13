import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:interview/screens/home_tabs/chat_page.dart';
import 'package:interview/screens/home_tabs/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  List<Widget> pageList = [
    HomePage(),
    ChatPage(),
    ChatPage(),
    ChatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Poppins',
        ),
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        unselectedItemColor: Color(0xFFAEAEB2),
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Home.png',
              height: 20,
              width: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/3 Friends.png',
                height: 20,
                width: 20,
              ),
              label: 'Moments'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Group 49.png',
                height: 20,
                width: 20,
              ),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Profile.png',
                height: 20,
                width: 20,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}

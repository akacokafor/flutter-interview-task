import 'package:flutter/material.dart';
import 'package:task/constants/app-fonts.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTabTapped;

  BottomNav(this.currentIndex, this.onTabTapped);
  @override
  Widget build(BuildContext context) {
    bool isIPad = MediaQuery.of(context).size.shortestSide > 600 ? true : false;
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: currentIndex,
      unselectedLabelStyle: AppFonts.body3,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Ubuntu',
        fontSize: isIPad ? 16 : 12,
        fontWeight: FontWeight.w700,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: onTabTapped,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled, color: Colors.grey.shade400,),
          label: 'Home',
          activeIcon: Icon(Icons.home_filled, color: Colors.black,),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: Colors.grey.shade400,),
          label: 'Moments',
          activeIcon: Icon(Icons.people, color: Colors.black,),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send, color: Colors.grey.shade400,),
          label: 'Chat',
          activeIcon: Icon(Icons.send, color: Colors.black,),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.grey.shade400,),
          label: 'Profile',
          activeIcon: Icon(Icons.person, color: Colors.black,),
        ),
      ],
    );
  }
}

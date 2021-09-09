import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/views/home/tab_view/chat_tab_view.dart';
import 'package:task/views/home/tab_view/dashboard_tab_view.dart';
import 'package:task/views/home/widgets/bottom-nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int investmentIndex = 0;
  int _currentIndex = 0;
  int sliderIndex = 0;

  void onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

  final List<Widget> _children = [
    DashboardTabView(),
    Container(
      child: Center(
        child: Text('Moments'),
      ),
    ),
    ChatTabView(),
    Container(
      child: Center(
        child: Text('Profile'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      bottomNavigationBar: BottomNav(_currentIndex, (onTabTapped)),
      body: _children[_currentIndex],
    );
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/app-images.dart';
import 'package:task/constants/widgets/custom-button.dart';
import 'package:task/constants/widgets/custom-input.dart';
import 'package:task/views/book_a_walk/screen.dart';
import 'package:task/views/home/tab_view/chat_tab_view.dart';
import 'package:task/views/home/tab_view/dashboard_tab_view.dart';
import 'package:task/views/home/widgets/bottom-nav.dart';
import 'package:task/views/home/widgets/carousel-header.dart';
import 'package:task/views/home/widgets/carousel-item.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';
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
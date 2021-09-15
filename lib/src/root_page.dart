import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parkway_projects_task/src/profile/profile.dart';

import 'chat/chat_list.dart';
import 'home/home.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);
  static const routeName = 'rootPage';
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const Home(),
          Container(),
          const ChatList(),
          const Profile()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: ['Home', 'Moments', 'Chat', 'Profile']
            .mapIndexed((index, label) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svgs/${label.toLowerCase()}.svg',
                  color: _currentIndex == index
                      ? Colors.black
                      : const Color(0xFFAEAEB2),
                ),
                label: label))
            .toList(growable: false),
      ),
    );
  }
}

extension ExtendedIterable<E> on Iterable<E> {
  /// Like Iterable<T>.map but callback have index as second argument
  Iterable<T> mapIndexed<T>(T Function(int i, E e) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }

  void forEachIndexed(void Function(int i, E e) f) {
    var i = 0;
    forEach((e) => f(i++, e));
  }
}

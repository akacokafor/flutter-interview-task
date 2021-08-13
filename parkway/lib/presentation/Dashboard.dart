
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkway/presentation/Profile.dart';
import 'package:parkway/presentation/chat.dart';
import 'package:parkway/presentation/home.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {


  List<Widget> children ;
  int activeIndex =0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    children = [
      Home(),
      Container(),
      Chat(),
      Profile()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: children[activeIndex],

      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: activeIndex,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          activeIndex = index;
          setState(() {});
        },
        selectedItemColor:Colors.black,
        unselectedItemColor: Colors.grey.shade500,
        selectedLabelStyle: GoogleFonts.poppins(
            color: Colors.black
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.poppins(
          color: Colors.grey.shade500,
        ),
        items: [

          BottomNavigationBarItem(
            icon: Icon(Entypo.home,),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_people),
            label:'Moments',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesome.send,
              ),
              label: 'Chat'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: 'Profile'
          )


        ],
      ),

    );
  }
}

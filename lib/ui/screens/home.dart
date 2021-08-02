import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_dog/ui/widgets/dogwalkerdetails.dart';
import 'package:woo_dog/utils/colors.dart';

class HomeScreen extends StatefulWidget {

  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Container();
  }
}

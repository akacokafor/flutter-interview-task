import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_dog/utils/colors.dart';

class DogWalkerDetails extends StatefulWidget {

  static const String id = 'walker_details';

  const DogWalkerDetails({Key? key}) : super(key: key);

  @override
  _DogWalkerDetailsState createState() => _DogWalkerDetailsState();
}

class _DogWalkerDetailsState extends State<DogWalkerDetails> {
  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Container();
  }
}

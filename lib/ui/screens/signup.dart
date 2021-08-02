import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_dog/ui/screens/dashboard.dart';
import 'package:woo_dog/utils/colors.dart';
import 'package:woo_dog/utils/constants.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Container();
  }
}

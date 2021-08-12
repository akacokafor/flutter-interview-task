import 'package:flutter/material.dart';
import 'package:parkway/presentation/chat.dart';
import 'package:parkway/presentation/on_boarding.dart';
import 'package:parkway/presentation/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParkWay',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SignUp(),
    );
  }





}

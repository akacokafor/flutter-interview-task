import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'view/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Interview Task',
        theme: ThemeData(),
        home: const Onboarding(),
      );
    });
  }
}

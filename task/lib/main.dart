import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-routes.dart';
import 'package:task/views/book_a_walk/screen.dart';
import 'package:task/views/chat/screen.dart';
import 'package:task/views/home/screen.dart';
import 'package:task/views/onboarding/screen.dart';
import 'package:task/views/register/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Flutter Interview Task',
          debugShowCheckedModeBanner: false,
          // home: OnboardingScreen(),
          routes: Routes.routes()
        );
      });
    });
  }
}
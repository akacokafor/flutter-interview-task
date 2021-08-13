import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/screens/dog_walker_detail_page.dart';
import 'package:interview/screens/home.dart';
import 'package:interview/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Woo Dog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
           textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            
          ),
          bodyText2: TextStyle(
            fontFamily: 'Poppins',
            
            fontWeight: FontWeight.normal,
          
          ),
          subtitle2: TextStyle(
            fontFamily: 'Poppins',
            
            fontWeight: FontWeight.normal,
          ),
          headline5: TextStyle(
            fontFamily: 'Poppins',
            
            fontWeight: FontWeight.w600,
         
          ),
          headline6: TextStyle(
            fontFamily: 'Poppins',
            
            fontWeight: FontWeight.w500,
           
          ),
          button: TextStyle(
         
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Poppins',
            
          ),
        ),
     
      ),
      home: SafeArea(child: OnboardingScreen()),
    );
  }
}

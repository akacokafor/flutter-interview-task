
import 'package:flutter/material.dart';
import 'package:task/views/book_a_walk/screen.dart';
import 'package:task/views/chat/screen.dart';
import 'package:task/views/home/screen.dart';
import 'package:task/views/onboarding/screen.dart';
import 'package:task/views/register/screen.dart';

class Routes {
  static const ONBOARDING_SCREEN_ROUTE = '/';
  static const HOME_SCREEN_ROUTE = '/home';
  static const CHAT_SCREEN_ROUTE = '/chat';
  static const REGISTER_SCREEN_ROUTE = '/sign-up';
  static const BOOK_A_WALK_SCREEN_ROUTE = '/book-a-walk';

  static Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      ONBOARDING_SCREEN_ROUTE: (context) => OnboardingScreen(),
      HOME_SCREEN_ROUTE: (context) => HomeScreen(),
      CHAT_SCREEN_ROUTE: (context) => ChatScreen(),
      REGISTER_SCREEN_ROUTE: (context) => RegisterScreen(),
      BOOK_A_WALK_SCREEN_ROUTE: (context) => BookAWalkScreen(),
    };
  }
}
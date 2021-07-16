import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_dog/ui/bottom-navs/walker-details.dart';
import 'package:woo_dog/ui/index.dart';
import 'package:woo_dog/ui/sign-up.dart';
import 'package:woo_dog/ui/splash-screen.dart';
import 'package:woo_dog/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woo Dog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: kDeepOrangeColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.dark,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: kDeepOrangeColor,
        ),
      ),
      initialRoute: Splash.id,
      themeMode: ThemeMode.system,
      routes: {
        Splash.id: (context) => Splash(),
        SignUp.id: (context) => SignUp(),
        Index.id: (context) => Index(),
        WalkerDetails.id: (context) => WalkerDetails(),
      },
    );
  }
}


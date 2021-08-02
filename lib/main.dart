import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:woo_dog/ui/widgets/chatdetails.dart';
import 'package:woo_dog/ui/widgets/dogwalkerdetails.dart';
import 'package:woo_dog/ui/screens/dashboard.dart';
import 'package:woo_dog/ui/screens/signup.dart';
import 'package:woo_dog/ui/screens/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woo Dog',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        DashboardScreen.id: (context) => DashboardScreen(),
        DogWalkerDetails.id: (context) => DogWalkerDetails(),
        ChatDetails.id: (context) => ChatDetails(),
      },
    );
  }
}

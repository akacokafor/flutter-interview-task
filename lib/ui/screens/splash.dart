import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_dog/ui/screens/dashboard.dart';
import 'package:woo_dog/ui/screens/signup.dart';
import 'package:woo_dog/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kDeepBlackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/splash-screen.png'),
                  Positioned(
                    left: 16,
                    top: 45,
                    child: SizedBox(
                      width: 101,
                      height: 40,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 21),
                      width: screenWidth,
                      height: screenHeight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kBackgroundColor),
                                child: Center(
                                  child: Text('1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF000000),
                                        letterSpacing: -0.0041,
                                      )),
                                ),
                              ),
                              Container(
                                width: 5,
                                height: 1.5,
                                margin: EdgeInsets.only(left: 5, right: 5),
                                color: Color(0xFFF7F7F8),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF404040),
                                ),
                                child: Center(
                                  child: Text('2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFF7F7F8),
                                        letterSpacing: -0.0041,
                                      )),
                                ),
                              ),
                              Container(
                                width: 5,
                                height: 1.5,
                                margin: EdgeInsets.only(left: 5, right: 5),
                                color: Color(0xFFF7F7F8),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF404040),
                                ),
                                child: Center(
                                  child: Text('3',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFF7F7F8),
                                        letterSpacing: -0.0041,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 22),
                          Text('Too tired to walk your dog?\n Let’s help you!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFCFCFC),
                                letterSpacing: -0.0041,
                              )),
                          SizedBox(height: 22),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, SignupScreen.id);
                            },
                            child: Container(
                              width: screenWidth,
                              height: 58,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14.0)),
                                gradient: LinearGradient(
                                  begin: FractionalOffset.centerLeft,
                                  end: FractionalOffset.centerRight,
                                  colors: [
                                    kDeepOrangeColor,
                                    kLightOrangeColor,
                                  ],
                                  stops: [0.764, 1.0],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Join our community',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                    color: kBackgroundColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, DashboardScreen.id);
                            },
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Already a member? ',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: kBackgroundColor,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Sign In',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                      color: kDeepOrangeColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

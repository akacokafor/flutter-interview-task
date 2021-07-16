import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woo_dog/ui/index.dart';
import 'package:woo_dog/ui/sign-up.dart';
import 'package:woo_dog/utils/colors.dart';
import 'package:woo_dog/utils/size-config.dart';

class Splash extends StatefulWidget {

  static const String id = 'splash_screen_page';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash-screen.png'),
                    fit: BoxFit.cover
                  ),
                )
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 47, 16, 57),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 101,
                    height: 40,
                    fit: BoxFit.cover
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    child: Column(
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
                                color: kBackgroundColor
                              ),
                              child: Center(
                                child: Text(
                                    '1',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF000000),
                                      letterSpacing: -0.0041,
                                    )
                                ),
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
                                child: Text(
                                    '2',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF7F7F8),
                                      letterSpacing: -0.0041,
                                    )
                                ),
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
                                child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF7F7F8),
                                      letterSpacing: -0.0041,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22),
                        Text(
                          'Too tired to walk your dog? Let’s help you!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFCFCFC),
                            letterSpacing: -0.0041,
                          )
                        ),
                        SizedBox(height: 22),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, SignUp.id);
                          },
                          child: Container(
                            width: SizeConfig.screenWidth,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(14.0)),
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
                          onPressed: (){
                            Navigator.pushNamed(context, Index.id);
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
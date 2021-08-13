import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/screens/home.dart';
import 'package:interview/screens/sign_up_page.dart';
import 'package:interview/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/ONBOARDING PICTURE.png'),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.black87,
                            Colors.black45,
                            Colors.white60,
                            Colors.white24,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    )),
                    Positioned(
                        left: 16,
                        top: 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/7d8a156d-f84d-40a9-97ea-c08c2be277cf_200x200 1.png',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              child: Text(
                                'WOO DOG',
                                style: TextStyle(
                                    color: Color(0xFFE73A40),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22,
                                    height: 0.85),
                              ),
                              width: 59,
                            )
                          ],
                        )),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.all(16.0).copyWith(top: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                pill(
                                  number: '1',
                                  ist: true,
                                ),
                                _margin(),
                                pill(
                                  number: '2',
                                ),
                                _margin(),
                                pill(
                                  number: '3',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Text(
                                'Too tired to walk your dog? Let’s help you!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 1.6,
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            CustomButton(
                              name: 'Join our community',
                              ontap: () {
                                Get.to(() => Home());
                              },
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => SignUpPage());
                              },
                              child: Text.rich(
                                TextSpan(
                                  text: 'Already a member? ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Sign in',
                                      style: TextStyle(
                                        color: Color(0XFFFB724C),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
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
      ),
    );
  }

  Container _margin() {
    return Container(
      height: 1.5,
      width: 10,
      color: Colors.white,
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
    );
  }

  Widget pill({required String number, bool ist = false}) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      child: Text(
        number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: ist ? Colors.black : Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: !ist ? Color(0xFF404040) : Colors.white,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';
import 'signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/onboarding.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 50, 258, 495),
              child: Image.asset(
                "assets/images/LOGO.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 300, 0, 0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/NUMBERING.png",
                    ),
                    const Text(
                      "Too tired to walk your dog?\n Let's help you!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: RoundedButton(
                        primaryCcolor: primaryCcolor,
                        height: 54,
                        width: 320,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        ),
                        child: const Text(
                          "Join our community",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Already a member?",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                          TextSpan(
                            text: " Sign in",
                            style:
                                TextStyle(color: primaryCcolor, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.primaryCcolor,
      required this.child,
      required this.onPressed,
      this.height,
      this.width})
      : super(key: key);

  final Color primaryCcolor;
  final double? height;
  final double? width;
  final Widget child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      height: height,
      minWidth: width,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: primaryCcolor,
      onPressed: onPressed,
      child: child,
    );
  }
}

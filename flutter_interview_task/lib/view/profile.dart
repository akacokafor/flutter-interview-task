import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_interview_task/constants.dart';
import 'package:flutter_interview_task/view/onboarding.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
              child: Image.asset(
                "assets/images/image.png",
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AspectRatio(
                aspectRatio: 1.2,
                child: Container(
                  child: Column(
                    children: [
                      const Text(
                        "Alex Murray",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("5\$/hr"),
                            const VerticalDivider(
                              color: Colors.black,
                            ),
                            const Text("10km"),
                            const VerticalDivider(
                              color: Colors.black,
                            ),
                            Row(
                              children: const [
                                Text("4.4"),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: textGreyColor,
                                )
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                            ),
                            const Text("450 walks"),
                          ],
                        ),
                      ),
                      const Divider(
                        endIndent: 15,
                        indent: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RoundedButton(
                                onPressed: () {},
                                primaryCcolor: Colors.black,
                                child: const Text(
                                  "About",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              RoundedButton(
                                onPressed: () {},
                                primaryCcolor: Colors.black12,
                                child: const Text(
                                  "About",
                                  style: TextStyle(color: textGreyColor),
                                ),
                              ),
                              RoundedButton(
                                onPressed: () {},
                                primaryCcolor: Colors.black12,
                                child: const Text(
                                  "About",
                                  style: TextStyle(color: textGreyColor),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 100, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(children: [
                                    TextSpan(
                                      text: "Age",
                                      style: TextStyle(color: textGreyColor),
                                    ),
                                    TextSpan(
                                        text: "\n30 years",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                ),
                                sizedBoxW20,
                                RichText(
                                  text: const TextSpan(children: [
                                    TextSpan(
                                      text: "Experience",
                                      style: TextStyle(color: textGreyColor),
                                    ),
                                    TextSpan(
                                        text: "\n11 months",
                                        style: TextStyle(color: Colors.black))
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                  text:
                                      "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...",
                                  style: TextStyle(color: textGreyColor),
                                ),
                                TextSpan(
                                    text: "\nRead more",
                                    style: TextStyle(color: primaryCcolor))
                              ]),
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: RoundedButton(
                          onPressed: () {},
                          width: 310,
                          primaryCcolor: primaryCcolor,
                          child: const Text(
                            "Check schedule",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/icons/CLOSE.png"),
                  Image.asset("assets/icons/VERIFIED.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

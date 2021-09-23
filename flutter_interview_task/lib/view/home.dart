import 'package:flutter/material.dart';
import 'package:flutter_interview_task/constants.dart';
import 'package:flutter_interview_task/view/onboarding.dart';
import 'package:flutter_interview_task/view/signup.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Explore dog walkers",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(176, 176, 176, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: RoundedButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.add, color: Colors.white),
                            Flexible(
                              child: Text(
                                "Book a walk",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        height: 40,
                        primaryCcolor: primaryCcolor,
                      ),
                    )
                  ],
                ),
                sizedBox20,
                const RoundedTextField(
                  label: '',
                  helperText: "Kiyv, Ukraine",
                  obscureText: false,
                  prefixIcon: ImageIcon(
                    AssetImage("assets/icons/Location.png"),
                  ),
                ),
                sizedBox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Near you",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 13,
                        color: Color.fromRGBO(43, 43, 43, 1),
                      ),
                    ),
                  ],
                ),
                sizedBox20,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/image.png",
                        height: 200,
                        width: 300,
                        fit: BoxFit.fitWidth,
                      ),
                      sizedBoxW20,
                      Image.asset(
                        "assets/images/onboarding.png",
                        height: 200,
                        width: 300,
                        fit: BoxFit.fitWidth,
                      ),
                      sizedBoxW20,
                    ],
                  ),
                ),
                sizedBox20,
                const Divider(
                  color: textGreyColor,
                ),
                sizedBox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Near you",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 13,
                        color: Color.fromRGBO(43, 43, 43, 1),
                      ),
                    ),
                  ],
                ),
                sizedBox20,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/j.png",
                        height: 200,
                        width: 300,
                        fit: BoxFit.fitWidth,
                      ),
                      sizedBoxW20,
                      Image.asset(
                        "assets/images/onboarding.png",
                        height: 200,
                        width: 300,
                        fit: BoxFit.fitWidth,
                      ),
                      sizedBoxW20,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

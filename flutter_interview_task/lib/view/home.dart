import 'package:flutter/material.dart';
import 'package:flutter_interview_task/view/constants.dart';
import 'package:flutter_interview_task/view/onboarding.dart';
import 'package:flutter_interview_task/view/signup.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home_filled,
        //         color: Colors.black,
        //       ),
        //       title: Text(
        //         "Home",
        //         style: TextStyle(color: Colors.black),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home_filled,
        //         color: Colors.black,
        //       ),
        //       title: Text(
        //         "Home",
        //         style: TextStyle(color: Colors.black),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home_filled,
        //         color: Colors.black,
        //       ),
        //       title: Text(
        //         "Home",
        //         style: TextStyle(color: Colors.black),
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.home_filled,
        //         color: Colors.black,
        //       ),
        //       title: Text(
        //         "Home",
        //         style: TextStyle(color: Colors.black),
        //       ),
        //     ),
        //   ],
        // ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                    RoundedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          Text(
                            "Book a walk",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      height: 40,
                      // width: 104,
                      primaryCcolor: primaryCcolor,
                    )
                  ],
                ),
                sizedBox20,
                RoundedTextField(
                  label: '',
                  helperText: "Kiyv, Ukraine",
                  obscureText: false,
                  prefixIcon: Icon(Icons.location_city),
                  suffixIcon: Icon(Icons.location_city),
                ),
                sizedBox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                      Image.asset("assets/images/Component9.png"),
                      sizedBoxW20,
                      Image.asset("assets/images/Component1.png"),
                      sizedBoxW20,
                    ],
                  ),
                ),
                sizedBox20,
                Divider(
                  color: textGreyColor,
                ),
                sizedBox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                      Image.asset("assets/images/Component3.png"),
                      sizedBoxW20,
                      Image.asset("assets/images/Component4.png"),
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

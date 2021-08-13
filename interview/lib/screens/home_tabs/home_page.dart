import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:interview/screens/dog_walker_detail_page.dart';
import 'package:interview/widgets/custom_button.dart';

import 'package:interview/widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Home',
                        textScaleFactor: 0.9,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          'Explore dog walkers',
                          style: TextStyle(
                            color: Color(0xFFB0B0B0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(14),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      height: 41,
                      width: 123,
                      child: Row(
                        children: [
                          Icon(
                            FeatherIcons.plus,
                            size: 13,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Book a walk',
                            style: TextStyle(
                              color: Color(0xFFF6F7FA),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: LinearGradient(
                          colors: [
                            Color(0XFFFB724C),
                            Color(0XFFFE904B),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SearchInput(),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.only(bottom: 30),
            children: [
              SizedBox(
                height: 20,
              ),
              HomeSections(
                title: 'Near you',
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              HomeSections(
                title: 'Suggested',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeSections extends StatelessWidget {
  const HomeSections({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                textScaleFactor: 0.9,
                style: TextStyle(
                  fontSize: 28,
                  height: 1.8,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'View all',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 176,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => DogWalkerBox(),
            ),
          ),
        ],
      ),
    );
  }
}

class DogWalkerBox extends StatelessWidget {
  const DogWalkerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DogWalkerDetailPage());
      },
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 200 + 25,
                height: 176,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 25,
                        ),
                        padding: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/dogwalker1.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14)),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Chip(
                                label: Text(
                                  '4.1',
                                ),
                                backgroundColor:
                                    Color(0xFFE5E5EA).withOpacity(0.2),
                                labelPadding: EdgeInsets.only(left: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                avatar: Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mason York',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1.2,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Color(0xFFA1A1A1),
                                  size: 10,
                                ),
                                Text(
                                  '7km from you',
                                  style: TextStyle(
                                      color: Color(0xFFA1A1A1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Chip(
                          label: Text(
                            '\$3/h',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Color(0xFF2B2B2B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

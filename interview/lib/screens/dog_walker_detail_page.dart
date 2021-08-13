import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:interview/widgets/custom_button.dart';

class DogWalkerDetailPage extends StatefulWidget {
  const DogWalkerDetailPage({Key? key}) : super(key: key);

  @override
  _DogWalkerDetailPageState createState() => _DogWalkerDetailPageState();
}

class _DogWalkerDetailPageState extends State<DogWalkerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return Stack(
          children: [
            Positioned(
              top: 0,
              bottom: constraint.maxHeight / 2,
              right: 0,
              left: 0,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/dogwalker1.png',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 16,
                right: 16,
                left: 16,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        child: Icon(
                          FeatherIcons.x,
                          color: Colors.white,
                          size: 17,
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xFFC4C4C4).withOpacity(0.4),
                            shape: BoxShape.circle),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 44,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            'Verified',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5.7,
                          ),
                          Icon(
                            FeatherIcons.checkSquare,
                            color: Colors.white,
                            size: 17,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                )),
            Positioned(
              bottom: 0,
              top: constraint.maxHeight * 0.45,
              right: 0,
              left: 0,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Alex Murray',
                          textScaleFactor: 0.8,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            info('5\$', '/hr'),
                            VerticalDivider(
                              color: Color(0xFFA1A1A1),
                              width: 25,
                            ),
                            info('10', ' km'),
                            VerticalDivider(
                              color: Color(0xFFA1A1A1),
                              width: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.4 ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 13,
                                )
                              ],
                            ),
                            info('5\$', ' /hr'),
                            VerticalDivider(
                              color: Color(0xFFA1A1A1),
                              width: 25,
                            ),
                            info('450', ' walks'),
                          ],
                        ),
                      ),
                      Divider(
                        height: 46,
                      ),
                      Wrap(
                        spacing: 22,
                        runSpacing: 5,
                        children: [
                          Chip(
                            backgroundColor: Color(0xFF2B2B2B),
                            label: Text(
                              'About',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFF7F7F8)),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          Chip(
                            backgroundColor: Color(0xFFF5F5F5),
                            label: Text(
                              'Location',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFB0B0B0)),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          Chip(
                            backgroundColor: Color(0xFFF5F5F5),
                            label: Text(
                              'Reviews',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFB0B0B0)),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          otherInfo('Age', '30 years'),
                          SizedBox(
                            width: 45,
                          ),
                          otherInfo('Experience', '11 months'),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
                        style: TextStyle(
                          color: Color(0xFFB0B0B0),
                          height: 1.6,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        'Read more',
                        style: TextStyle(
                          color: Color(0xaffFB724C),
                          height: 1.5,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      CustomButton(
                        ontap: () {},
                        name: 'Chack schedule',
                      ),
                      SizedBox(
                        height: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Column otherInfo(text1, text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
              color: Color(0xFFB0B0B0),
              fontWeight: FontWeight.w500,
              fontSize: 13),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Color(0xFF2B2B2B),
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget info(text1, text2) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(color: Color(0xFFB0B0B0)),
          ),
        ],
      ),
    );
  }
}

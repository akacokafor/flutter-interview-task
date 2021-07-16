import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:woo_dog/utils/colors.dart';
import 'package:woo_dog/utils/size-config.dart';

class WalkerDetails extends StatefulWidget {

  const WalkerDetails({Key key}) : super(key: key);

  static const String id = 'walker_details_page';

  @override
  _WalkerDetailsState createState() => _WalkerDetailsState();
}

class _WalkerDetailsState extends State<WalkerDetails> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlackColor,
      body: SafeArea(
        bottom: false,
        top: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/walker.png',
              width: SizeConfig.screenWidth,
              height: (SizeConfig.screenHeight / 2) + 150,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.low,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    margin: EdgeInsets.all(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFC4C4C4).withOpacity(0.5),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/close.png',
                                width: 10,
                                height: 10,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 44,
                    margin: EdgeInsets.all(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          height: 44,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Color(0xFFC4C4C4).withOpacity(0.5),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                    'Verified',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFF7F7F8),
                                      letterSpacing: -0.0041,
                                    )
                                ),
                                SizedBox(width: 5.67),
                                Image.asset(
                                  'assets/images/verified.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 34),
                decoration: BoxDecoration(
                  color: Color(0xFFFBFBFB),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        'Alex Murray',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                          letterSpacing: -0.0041,
                        )
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '5\$',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: kBlackColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '/hr',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: kLightBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 15,
                          margin: EdgeInsets.only(left: 10, right: 13),
                          color: Color(0xFFA1A1A1),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '10',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: kBlackColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'km',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: kLightBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          height: 15,
                          margin: EdgeInsets.only(left: 12, right: 11),
                          color: Color(0xFFA1A1A1),
                        ),
                        Row(
                          children: [
                            Text(
                                '4.4',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: kBlackColor,
                                ),
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: Color(0xFFA1A1A1),
                            )
                          ]
                        ),
                        Container(
                          width: 1,
                          height: 15,
                          margin: EdgeInsets.only(left: 14, right: 11),
                          color: Color(0xFFA1A1A1),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '450 ',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: kBlackColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'walks',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: kLightBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22),
                    Container(
                      width: SizeConfig.screenWidth,
                      height: 1.5,
                      color: Color(0xFFE8E8E8)
                    ),
                    SizedBox(height: 22),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(29, 12, 29, 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  color: kBlackColor
                              ),
                              child: Center(
                                child: Text(
                                  'About',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFF7F7F8),
                                      letterSpacing: -0.0041
                                  ),
                                ),
                              )
                          ),
                          SizedBox(width: 21),
                          Container(
                              padding: EdgeInsets.fromLTRB(29, 12, 29, 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  color: Color(0xFFF5F5F5)
                              ),
                              child: Center(
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFB0B0B0),
                                      letterSpacing: -0.0041
                                  ),
                                ),
                              )
                          ),
                          SizedBox(width: 21),
                          Container(
                              padding: EdgeInsets.fromLTRB(29, 12, 29, 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  color: Color(0xFFF5F5F5)
                              ),
                              child: Center(
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFB0B0B0),
                                      letterSpacing: -0.0041
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFB0B0B0),
                                      letterSpacing: -0.0041
                                  ),
                                ),
                                Text(
                                  '30 Years',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: kBlackColor,
                                      letterSpacing: -0.0041
                                  ),
                                ),
                              ]
                            ),
                            SizedBox(width: 45),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Experience',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFB0B0B0),
                                      letterSpacing: -0.0041
                                  ),
                                ),
                                Text(
                                  '11 months',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: kBlackColor,
                                      letterSpacing: -0.0041
                                  ),
                                ),
                              ]
                            ),
                          ],
                        ),
                        SizedBox(height: 22),
                        Container(
                          width: 279,
                          child: Text(
                            'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFB0B0B0),
                                letterSpacing: -0.0041
                            ),
                          ),
                        ),
                        Text(
                          'Read more',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFB724C),
                              letterSpacing: -0.0041
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
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
                            'Check schedule ',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

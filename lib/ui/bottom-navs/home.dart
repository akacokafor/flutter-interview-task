import 'package:flutter/material.dart';
import 'package:woo_dog/ui/bottom-navs/walker-details.dart';
import 'package:woo_dog/utils/colors.dart';
import 'package:woo_dog/utils/size-config.dart';

class Home extends StatefulWidget {

  const Home({Key key}) : super(key: key);

  static const String id = 'home_page';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 69, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: kBlackColor,
                                letterSpacing: -0.0041,
                              )
                          ),
                          Text(
                              'Explore dog walkers',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: kLightBlackColor,
                                letterSpacing: -0.0041,
                              )
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10.84, 13, 10.84, 13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.add,
                                size: 18,
                                color: kBackgroundColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Book a walk',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: kBackgroundColor,
                                  letterSpacing: -0.0041,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 21.75),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(11.83, 10, 15.75, 12.5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F0F0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/location.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Kiyv, Ukraine',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFA1A1A1),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 13.33,
                          height: 20,
                          child: Stack(
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/filter.png',
                                  width: 13.33,
                                  height: 12,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE73A40),
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 22.25),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          'Near you',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                            letterSpacing: -0.0041,
                          )
                      ),
                      Text(
                          'View all',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: kBlackColor,
                            letterSpacing: -0.0041,
                            decoration: TextDecoration.underline
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, WalkerDetails.id);
                        },
                        child: Container(
                          width: 175,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/frame1.png',
                                width: 175,
                                height: 125,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Mason York',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: kBlackColor,
                                            letterSpacing: -0.0041,
                                          )
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/location.png',
                                            width: 6.25,
                                            height: 7.5,
                                            fit: BoxFit.contain,
                                          ),
                                          SizedBox(height: 3.88),
                                          Text(
                                              '7 km from you',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A1A1),
                                                letterSpacing: -0.0041,
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                        color: kBlackColor
                                      ),
                                      child: Center(
                                        child: Text(
                                          '\$3/h ',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFBFBFB),
                                            letterSpacing: -0.0041
                                          ),
                                        ),
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 43),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, WalkerDetails.id);
                        },
                        child: Container(
                          width: 175,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/frame2.png',
                                width: 175,
                                height: 125,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Mark Greene',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: kBlackColor,
                                            letterSpacing: -0.0041,
                                          )
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/location.png',
                                            width: 6.25,
                                            height: 7.5,
                                            fit: BoxFit.contain,
                                          ),
                                          SizedBox(height: 3.88),
                                          Text(
                                              '14 km from you',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A1A1),
                                                letterSpacing: -0.0041,
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                        padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(7)),
                                            color: kBlackColor
                                        ),
                                        child: Center(
                                          child: Text(
                                            '\$3/h ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFFBFBFB),
                                                letterSpacing: -0.0041
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.only(right: 16),
                  width: SizeConfig.screenWidth,
                  height: 1.5,
                  color: Color(0xFFE8E8E8),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          'Suggested',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: kBlackColor,
                            letterSpacing: -0.0041,
                          )
                      ),
                      Text(
                          'View all',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: kBlackColor,
                              letterSpacing: -0.0041,
                              decoration: TextDecoration.underline
                          )
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, WalkerDetails.id);
                        },
                        child: Container(
                          width: 175,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/frame3.png',
                                width: 175,
                                height: 125,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Mark Greene',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: kBlackColor,
                                            letterSpacing: -0.0041,
                                          )
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/location.png',
                                            width: 6.25,
                                            height: 7.5,
                                            fit: BoxFit.contain,
                                          ),
                                          SizedBox(height: 3.88),
                                          Text(
                                              '2 km from you',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A1A1),
                                                letterSpacing: -0.0041,
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                        padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(7)),
                                            color: kBlackColor
                                        ),
                                        child: Center(
                                          child: Text(
                                            '\$5/h ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFFBFBFB),
                                                letterSpacing: -0.0041
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 43),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, WalkerDetails.id);
                        },
                        child: Container(
                          width: 175,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/frame4.png',
                                width: 175,
                                height: 125,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Trina Kain',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: kBlackColor,
                                            letterSpacing: -0.0041,
                                          )
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/location.png',
                                            width: 6.25,
                                            height: 7.5,
                                            fit: BoxFit.contain,
                                          ),
                                          SizedBox(height: 3.88),
                                          Text(
                                              '4 km from you',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFA1A1A1),
                                                letterSpacing: -0.0041,
                                              )
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Container(
                                        padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(7)),
                                            color: kBlackColor
                                        ),
                                        child: Center(
                                          child: Text(
                                            '\$5/h ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFFFBFBFB),
                                                letterSpacing: -0.0041
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ],
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
        ),
      ),
    );
  }

}

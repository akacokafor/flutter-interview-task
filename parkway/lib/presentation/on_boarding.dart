

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
    padding: EdgeInsets.symmetric(vertical: 20),
        child: Stack(
          children: [

              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Image(
                      width: 50,
                      height: 50,
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/7d8a156d-f84d-40a9-97ea-c08c2be277cf_200x200 1.png")
                    ),

                    RichText(
                      text: TextSpan(
                        children:[
                          WidgetSpan(child:  Text(
                            "woo",
                            style: GoogleFonts.poppins(
                                color: Color(0xffE73A40),
                                fontWeight: FontWeight.bold,
                                fontSize: 23
                            ),
                          ),),
                          WidgetSpan(child:  Text(
                            "dog",
                            style: GoogleFonts.poppins(
                                color: Color(0xffE73A40),
                                fontWeight: FontWeight.bold,
                                fontSize: 23
                            ),
                          ),),
                        ]
                      ),

                    )

                  ],
                ),
              ),

            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  // Number indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                            "1",
                            style: GoogleFonts.poppins(
                                color: Colors.black87,
                                fontSize: 18
                            )
                        ) ,
                      ),
                      Container(
                        width: 20,
                        color: Colors.white,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.symmetric(horizontal: 7),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                          "2",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ) ,
                      ),
                      Container(
                        width: 20,
                        color: Colors.white,
                        padding: EdgeInsets.all(1),
                        margin: EdgeInsets.symmetric(horizontal: 7),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            shape: BoxShape.circle
                        ),
                        child: Text(
                          "3",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18
                          ),
                        ) ,
                      ),
                    ],
                  ),

                  // Boarding text
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    alignment: Alignment.center,
                    child: Text(
                      "Too tired to walk your dog? \nLet’s help you!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),

                  //Join Community
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      padding: EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width * 0.8,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [
                            Color(0xffFB724C),
                            Color(0xffFE904B),

                          ],
                        ),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () {  },
                        child: Text(
                          "Join our community",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            shadowColor: MaterialStateProperty.all(Colors.transparent),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),

                                )
                            )
                        ),
                      ),
                    ),
                  ),

                  // bottom text

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15,bottom: MediaQuery.of(context).size.height * 0.03),
                    child: RichText(
                      text: TextSpan(
                          children: [

                            TextSpan(
                                text: "Already a member?",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontSize: 16
                                )
                            ),
                            TextSpan(
                                text: " Sign in",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFB724C),
                                    fontSize: 16
                                )
                            ),

                          ]
                      ),
                    ),
                  )


                ],
              ),
            )

          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/ONBOARDING PICTURE.png"
            )
          )
        ),
      ) ,

    );
  }
}

// \#202020
// 100%
// #202020
// 95%
// #202020
// 90%
// #3C3C3C
// 85%
// #FFFFFF
// 0%
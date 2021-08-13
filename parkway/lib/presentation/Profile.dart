
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Stack(
          children: [

            Positioned(
              top: 0,
              child: Container(
                height:MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                padding:EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.05, horizontal: 30 ) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Verified",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),),
                          SizedBox(width: 3,),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white30
                            ),
                            child: Icon(
                              AntDesign.check,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(18))
                      ),
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/IMAGE.png")
                    )
                ),

                

              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                  ),
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width* 0.05),

                  child: Column(

                    children: [


                      Container(
                        width: 250,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffB0B0B0)
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.topLeft,

                        child: Text("Read more...",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFB724C)
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.9,
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
                            "Check schedule",
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

                    ],
                  ),

            ))




          ],
        ),
      ),

    );
  }
}

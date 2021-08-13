
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

                  child: SingleChildScrollView(
                    child: Column(

                      children: [



                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            "Alex Murray",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 24),
                          ),
                        ),



                        Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Info(text1: "5\$", text2:"/hr"),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 20,
                                color:const Color(0xffB0B0B0),
                                padding: EdgeInsets.all(1),
                              ),
                              Info(text1: "10 ", text2:"km"),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 20,
                                color:const Color(0xffB0B0B0),
                                padding: EdgeInsets.all(1),
                              ),
                              RichText(text: TextSpan(
                                  children:<InlineSpan>[
                                    TextSpan(
                                        text: "4.4 ",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 15, fontWeight: FontWeight.w600
                                        )
                                    ),
                                    WidgetSpan(
                                       child: Icon(
                                         Icons.star,
                                         size: 18,
                                         color: const Color(0xffB0B0B0),
                                       ),

                                    ),

                                  ]
                              )),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 20,
                                color:const Color(0xffB0B0B0),
                                padding: EdgeInsets.all(1),
                              ),
                              Info(text1: "450 ", text2:"walks"),


                            ],
                          ),
                        ),




                        Container(
                          height: 2,
                          color: Colors.grey.shade300,
                          padding: EdgeInsets.all(1),
                          margin: EdgeInsets.symmetric(vertical: 10),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                padding: EdgeInsets.all(10),
                                width: 100,
                                alignment: Alignment.center,
                                child: Text("About",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15
                                  ),),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 100,
                                alignment: Alignment.center,
                                child: Text("Location",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffB0B0B0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15
                                  ),),
                                decoration: BoxDecoration(
                                    color: Color(0xffF5F5F5),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 100,
                                alignment: Alignment.center,
                                child: Text("Review",
                                  style: GoogleFonts.poppins(
                                      color: Color(0xffB0B0B0),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15
                                  ),),
                                decoration: BoxDecoration(
                                    color: Color(0xffF5F5F5),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                ),
                              ),
                            ],
                          ),
                        ),


                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Age",
                                      style: GoogleFonts.poppins(
                                          color: Color(0xffB0B0B0),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14
                                      ),),
                                    Text("30 years",style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),),

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 35),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Experience",
                                      style: GoogleFonts.poppins(
                                          color: const Color(0xffB0B0B0),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14
                                      ),),
                                    Text("11 months",style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ),


                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...",
                            softWrap: true,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color(0xffB0B0B0)
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.topLeft,

                          child: Text("Read more...",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFB724C)
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
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
                  ),

            ))

          ],
        ),
      ),

    );
  }



  Widget  Info({String text1, String text2})=> RichText(text: TextSpan(
      children:<InlineSpan>[
        TextSpan(
            text: text1,
            style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 15, fontWeight: FontWeight.w500
            )
        ),
        TextSpan(
            text: text2,
            style: GoogleFonts.poppins(
                color:const Color(0xffB0B0B0),
                fontSize: 15, fontWeight: FontWeight.w600
            )
        ),

      ]
  ));


}

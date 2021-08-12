
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
         elevation: 0,
         leading: InkWell(
           child: Icon(
             Icons.arrow_back_outlined,
             size: 26,
             color: Colors.black,
           ),
         ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Stack(
          children: [


            Container(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Let’s  start here",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontSize: 25
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 8),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Fill in your details to begin",
                        style: GoogleFonts.poppins(
                            color: Color(0xff7A7A7A),
                            fontSize: 17,
                            fontWeight: FontWeight.w400
                        ),
                      ),

                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 25,bottom: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        maxLines: 1,
                        cursorColor: Color(0xffE73A40),
                        decoration: InputDecoration(
                            labelText: "Fullname",
                            border: InputBorder.none,
                            hintText:"Fullname",
                            hintStyle:GoogleFonts.poppins(
                                color:Color(0xffAEAEB2),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                            labelStyle:GoogleFonts.poppins(
                                color:Color(0xffAEAEB2),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            )
                        ),

                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.all(Radius.circular(13))
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        maxLines: 1,
                        cursorColor: Color(0xffE73A40),
                        decoration: InputDecoration(
                            labelText: "E-mail",
                            border: InputBorder.none,
                            hintText:"Email",
                            hintStyle:GoogleFonts.poppins(
                                color:Color(0xffAEAEB2),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                            labelStyle:GoogleFonts.poppins(
                                color:Color(0xffAEAEB2),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            )
                        ),

                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.all(Radius.circular(13))
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [

                          Expanded(
                            child: TextFormField(
                              maxLines: 1,
                              cursorColor: Color(0xffE73A40),
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  border: InputBorder.none,
                                  hintText:"Password",
                                  hintStyle:GoogleFonts.poppins(
                                      color:Color(0xffAEAEB2),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  ),
                                  labelStyle:GoogleFonts.poppins(
                                      color:Color(0xffAEAEB2),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  )
                              ),

                            ),
                          ),
                          Icon(
                            Icons.visibility_off_outlined,
                            color: Color(0xffAEAEB2),
                          )

                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.all(Radius.circular(13))
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(3),
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
                          "Sign up",
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
            ),

            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.03, vertical: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [

                      TextSpan(
                          text: "By signing in, I agree with",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color:Color(0xff7A7A7A),
                              fontSize: 16
                          )
                      ),
                      TextSpan(
                          text: " Terms of Use and Privacy Policy",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 16
                          )
                      ),

                    ]
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}

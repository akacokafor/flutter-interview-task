import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  late List<DogWalker> walkers;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    walkers =[
      DogWalker(name: "Mason York", image: "assets/images/Frame 33575.png", distance: "7 km from you", charges: "3", rating: "4.2"),
      DogWalker(name: "Mark Greene", image: "assets/images/Component 1.png", distance: "14 km from you", charges: "6", rating: "6.2"),
      DogWalker(name: "Mark Greene", image: "assets/images/Frame 33546.png", distance: "2 km from you", charges: "5", rating: "4.2"),
      DogWalker(name: "Trina Kain", image: "assets/images/Component 4.png", distance: "4 km from you", charges: "8", rating: "5.2"),
    ];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only( top: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Home",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Explore dog walkers",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Color(0xffB0B0B0),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                            ),

                          ],
                        ),
                      )),
                  SizedBox(width: 5,),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          "Book a walk",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14
                          ),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Color(0xffFB724C),
                          Color(0xffFE904B),

                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),

            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: "Search...",
                            hintMaxLines: 1,
                            hintStyle: GoogleFonts.poppins(

                            )
                        ),

                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.filter_tilt_shift_outlined,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

              ),
            ),

            SizedBox(height: 15,),


            Expanded(
                child: SingleChildScrollView(
                  child: Column(

                    children: [

                      Container(
                        margin: EdgeInsets.only( top: 10),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Near You",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 23),
                              ),
                            ),

                            Container(
                              child: Text(
                                "View all",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),

                      ),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,

                        child: ListView(

                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only( top: 20),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Suggested",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 23),
                              ),
                            ),

                            Container(
                              child: Text(
                                "View all",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    fontSize: 15),
                              ),
                            ),
                          ],
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


  Widget WalkerContainer({required String name,required String image,required String distance,required String charges,required String rating})=>Container(
    child: Column(
      children: [

        Container(
          height: 150,
          width: 300,
          child: Container(
            child: Row(
              children: [
                Icon(Icons.star,
                  color: Color(0xffFFCB55),),
                Text(
                  rating,
                  style: GoogleFonts.poppins(
                      color: Color(0xffFFCB55),
                      fontSize: 14
                  ),
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image)
              )
          ),
        )

      ],
    ),
  );



}


class DogWalker{

  final String name, image,distance, charges,rating;

  DogWalker({ required this.name,required this.image,required this.distance,required this.charges,required this.rating});

}

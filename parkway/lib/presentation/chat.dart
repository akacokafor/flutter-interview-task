
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {


   List<UserChat> chats;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    chats  = [
      UserChat(name: "Will Knowles",
          image: "assets/images/Unsplash-Avatars_0004s_0035_brian-uIT9Vk0HHJE-unsplash.png",
          message: "Hey! How’s your dog? ∙", offtime: " 1min", isOnline:true ),

      UserChat(name: "Ryan Bond", image: "assets/images/Unsplash-Avatars_0004s_0013_sirio-wSikuNio6UY-unsplash.png",
          message: "Let’s go out! ∙ ", offtime: "5h", isOnline:false ),

      UserChat(name: "Sirena Paul", image: "assets/images/Unsplash-Avatars_0004s_0001_etty-fidele--5S4I0Y8ngY-unsplash-1.png",
          message: "Hey! Long time no see ∙", offtime: "1min", isOnline:true ),

      UserChat(name: "Matt Chapman",
          image: "assets/images/Unsplash-Avatars_0004s_0005_laurence-cruz-P7yvmajPvkM-unsplash.png",
          message: "You fed the dog? ∙", offtime: " 6h", isOnline:false ),

      UserChat(name: "Laura Pierce", image: "assets/images/Unsplash-Avatars_0004s_0002_jessica-felicio-QS9ZX5UnS14-unsplash.png",
          message: "How are you doing? ∙", offtime: "7h", isOnline:false ),
      UserChat(name: "Hazel Reed", image: "assets/images/Unsplash-Avatars_0004s_0001_etty-fidele--5S4I0Y8ngY-unsplash-1.png",
          message: "Hey! Long time no see ∙", offtime: "5h", isOnline:false ),

    ];


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
        child:Column(

          children: [

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Chat",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  fontSize: 25

                ),
              ),
            ),

            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_sharp,
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

            SizedBox(height: 10,),
            Expanded(child: ListView(
              padding: EdgeInsets.all(1),
              children:List.generate(chats.length, (index) =>ChatList(name:
              chats[index].name, image:  chats[index].image, message:  chats[index].message,
                  offtime:  chats[index].offtime, isOnline:  chats[index].isOnline)),
            ))
            
            



          ],
        ),


      ),
    );
  }



  Widget ChatList({@required String name,@required String image,@required String message,@required String offtime, @required bool isOnline, })=>Container(
    margin:const EdgeInsets.only( top: 10),
    padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(image))),
              ),
              Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 18),
                          ),
                        ),

                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Expanded(
                                child: Text(
                                  message,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                              Container(
                                width: 40,
                                child: Text(
                                  offtime,
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
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
        SizedBox(width: 15,),
        Container(
          padding: EdgeInsets.all(6),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color:isOnline ? Color(0xffFB724C): Colors.white,
            shape: BoxShape.circle
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.black26,
          width: 1
        )
      )
    ),
  );
  

}


class UserChat {

 final String name,image,message,offtime;
  final bool isOnline;

  UserChat( {@required this.name, @required this.image,@required this.message,@required this.offtime,@required this.isOnline});


}

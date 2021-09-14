import 'package:flutter/material.dart';
import 'package:flutter_interview_task/models/chatmodel.dart';
import 'package:flutter_interview_task/constants.dart';

class Chatting extends StatelessWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ChatMessage> messages = [
      ChatMessage(
          messageContent:
              "Hey, Alex! Nice to meet you! I’d like to hire a walker and you’re perfect one for me. Can you help me out?",
          messageType: "receiver"),
      ChatMessage(
          messageContent:
              "Hi! That’s great! Let me give you a call and we’ll discuss all the details",
          messageType: "sender"),
      ChatMessage(
          messageContent: "Okay, I’m waiting for a call",
          messageType: "receiver"),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image.png"),
                    maxRadius: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Alex Murray",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: messages[index].messageType == "receiver"
                            ? BorderRadius.circular(20)
                            : BorderRadius.circular(0),
                        color: (messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : primaryCcolor),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: TextStyle(
                            fontSize: 15,
                            color: messages[index].messageType == "receiver"
                                ? Colors.black
                                : Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 245, 245, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: primaryCcolor,
                        decoration: InputDecoration(
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            hintText: "Write message...",
                            suffixIcon: Icon(
                              Icons.mic,
                              color: Colors.black,
                              size: 20,
                            ),
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none),
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

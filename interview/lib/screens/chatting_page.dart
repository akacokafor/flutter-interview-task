import 'package:flutter/material.dart';

class ChattingPage extends StatefulWidget {
  const ChattingPage({Key? key}) : super(key: key);

  @override
  _ChattingPageState createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  List<Message> chats = [
    Message(
      msg:
          'Hey, Alex! Nice to meet you! I’d like to hire a walker and you’re perfect one for me. Can you help me out?',
      isSent: false,
    ),
    Message(
      msg:
          'Hi! That’s great! Let me give you a call and we’ll discuss all the details',
      isSent: true,
    ),
    Message(
      msg: 'Okay, I’m waiting for a call)',
      isSent: false,
    ),
    Message(
      msg:
          'Hey, Alex! Nice to meet you! I’d like to hire a walker and you’re perfect one for me. Can you help me out?',
      isSent: false,
    ),
    Message(
      msg:
          'Hi! That’s great! Let me give you a call and we’ll discuss all the details',
      isSent: true,
    ),
    Message(
      msg: 'Okay, I’m waiting for a call)',
      isSent: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 23,
              ),
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage( 'assets/images/dogwalker1.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Alex Murray'),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Color(0xFF5AD439),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text('Online'),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.phone),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  return ChatBox(
                      isSent: chats[index].isSent, msg: chats[index].msg);
                }),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 11,
              horizontal: 16,
            ),
            height: 45,
            child: Row(
              children: [
                Container(
                  height: 43.99,
                  width: 44,
                  child: Icon(
                    Icons.add,
                    color: Color(0xFFFB724C),
                    size: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xFFF5F5F5),
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Color(0xFFFB724C),
                     style: TextStyle(fontFamily: 'Poppins'),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero.copyWith(left: 16),
                        filled: true,
                        hintText: 'Aa',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        fillColor: Color(0xFFF5F5F5),
                         hintStyle: TextStyle(fontFamily: 'Poppins'),
                        suffixIcon: Icon(
                          Icons.mic,
                          color: Color(0xFF130F26),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChatBox extends StatelessWidget {
  const ChatBox({
    Key? key,
    required this.isSent,
    required this.msg,
  }) : super(key: key);

  final bool isSent;
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          !isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        !isSent ? Spacer() : _message(isSent),
        !isSent ? _message(isSent) : Spacer(),
      ],
    );
  }

  Widget _message(isSent) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment:
            isSent ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment:
                !isSent ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: !isSent ? 12 : 0,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Text(
                  msg,
                  style: TextStyle(
                    color: !isSent ? Colors.white : Color(0xFF2B2B2B),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
                decoration: BoxDecoration(
                    color: !isSent ? Color(0xFFFB724C) : Color(0xFFECEEF1),
                    borderRadius: BorderRadius.circular(14).copyWith(
                      bottomRight:
                          !isSent ? Radius.circular(0) : Radius.circular(14),
                      bottomLeft:
                          !isSent ? Radius.circular(14) : Radius.circular(0),
                    )),
              ),
              Text(
                '1 April 12:00',
                style: TextStyle(
                    color: Color(0xFFAEAEB2),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    height: 1.5),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Message {
  const Message({
    required this.msg,
    required this.isSent,
  });
  final String msg;
  final bool isSent;
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/screens/chatting_page.dart';
import 'package:interview/widgets/search_input.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Chat> chats = [
    Chat(
      msg: 'Hey! How’s your dog? ∙ 1min',
      name: 'Will Knowles',
      read: false,
    ),
    Chat(
      msg: 'Let’s go out! ∙ 5h',
      name: 'Ryan Bond',
      read: true,
    ),
    Chat(
      msg: 'Hey! Long time no see ∙ 1min',
      name: 'Sirena Paul',
      read: false,
    ),
    Chat(
      msg: 'You fed the dog? ∙ 6h',
      name: 'Matt Chapman',
      read: true,
    ),
    Chat(
      msg: 'How are you doing? ∙ 7h',
      name: 'Laura Pierce',
      read: true,
    ),
    Chat(
      msg: 'Hey! Long time no see ∙ 5h',
      name: 'Hazel Reed',
      read: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22,
              ),
              Text(
                'Chat',
                textScaleFactor: 0.95,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchInput(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(
              top: 16.5,
            ),
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return ChatListTile(
                msg: chats[index].msg,
                name: chats[index].name,
                read: chats[index].read,
              );
            },
          ),
        ),
      ],
    );
  }
}

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    Key? key,
    required this.msg,
    required this.name,
    required this.read,
  }) : super(key: key);

  final String msg;
  final String name;
  final bool read;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ChattingPage());
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(
              color: Color(0xFFECEEF1),
            ),
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFFFB724C),
              backgroundImage: AssetImage(
                'assets/images/dogwalker1.png',
              ),
              radius: 29,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  msg,
                  style: TextStyle(

                      // fontWeight: FontWeight.w500,
                      color: Color(0xFF4F4F4F)),
                ),
              ],
            ),
            Spacer(),
            !read
                ? CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFFB724C),
                  )
                : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

class Chat {
  const Chat({
    required this.msg,
    required this.name,
    required this.read,
  });
  final String msg;
  final String name;
  final bool read;
}

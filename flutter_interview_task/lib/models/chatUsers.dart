import 'package:flutter/cupertino.dart';

class ChatUsers {
  String name;
  String messageText;
  AssetImage imageURL;
  String time;
  ChatUsers({
    required this.name,
    required this.messageText,
    required this.imageURL,
    required this.time,
  });
}

import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-colors.dart';
import 'package:task/constants/app-fonts.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String? time;
  final Key? key;

  MessageBubble(this.message, this.isMe, this.time, {this.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if(isMe)
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.widthMultiplier! * 30),
            child: Text(time!, style: AppFonts.body1),
          ),
        Row(
          mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isMe ? AppColors.PRIMARY_COLOR : Colors.grey[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(12),
                  bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
                ),
              ),
              width: SizeConfig.widthMultiplier! * 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              margin: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier! * 2, horizontal: 8),
              child: Text(
                message,
                style: TextStyle(
                    color: isMe
                        ? Colors.white
                        : Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
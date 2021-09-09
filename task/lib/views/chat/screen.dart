import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-colors.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/app-images.dart';
import 'package:task/constants/widgets/custom-input.dart';
import 'package:task/views/chat/widgets/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 6, right: size.width * 0.05, left: size.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(onTap: () => Navigator.of(context).pop(), child: Icon(Icons.arrow_back, color: Colors.black,)),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 4
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: SizeConfig.imageSizeMultiplier * 6,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(AppImages.bookAWalk),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 3
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Alex Murray', style: AppFonts.heading4),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: SizeConfig.imageSizeMultiplier * 1,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(
                                    width: SizeConfig.widthMultiplier * 2
                                  ),
                                  Text('Online', style: AppFonts.body3)
                                ],
                              )
                            ]
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(Icons.call, color: Colors.black,)
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              MessageBubble('Hey, Alex! Nice to meet you! I’d like to hire a walker and you’re perfect one for me. Can you help me out?', true, '1 April 12:00'),
              MessageBubble('Hi! That’s great! Let me give you a call and we’ll discuss all the details', false, ''),
              MessageBubble('Okay, I’m waiting for a call', true, '12:30'),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.3),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.add, color: AppColors.PRIMARY_COLOR)
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 3,
                      ),
                      CustomInput(
                        width: size.width * 0.7,
                        hint: 'Search',
                        suffixIcon: Icon(Icons.mic, color: Colors.black),
                        onSaved: (value) {},
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
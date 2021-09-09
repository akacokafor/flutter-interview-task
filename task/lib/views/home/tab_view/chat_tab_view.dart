import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-colors.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/widgets/custom-input.dart';
import 'package:task/views/chat/screen.dart';
import 'package:task/views/home/models/chat.dart';

class ChatTabView extends StatelessWidget {
  const ChatTabView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Chat> chats = Chats.chats;
    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.only(top: size.height * 0.06),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: Text('Chat', style: AppFonts.heading1),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.05),
              child: CustomInput(
                label: 'Search',
                prefixIcon: Icon(Icons.location_on, color: Colors.grey.shade400,),
                suffixIcon: Icon(Icons.location_city, color: Colors.grey.shade400,),
                hint: 'Ryan Bond',
                onSaved: (value) {},
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Container(
              height: size.height * 0.8,
              width: size.width,
              padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 3),
              child: ListView.builder(
                  padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 10),
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    Chat chat = chats[index];
                    return InkWell(
                      onTap: () => Navigator.of(context).pushNamed(ChatScreen.routeName),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(top: BorderSide(color: Colors.grey.shade300))
                        ),
                        child: ListTile(
                            minVerticalPadding: 0,
                            contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
                            leading: CircleAvatar(
                              radius: SizeConfig.imageSizeMultiplier * 6,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(chat.image),
                            ),
                            title:
                                Text(chat.name, style: AppFonts.heading4),
                            subtitle:
                                Text(chat.message, style: AppFonts.body3),
                            trailing: chat.isOnline ? CircleAvatar(radius: 5, backgroundColor: AppColors.PRIMARY_COLOR) : SizedBox(),
                            )
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
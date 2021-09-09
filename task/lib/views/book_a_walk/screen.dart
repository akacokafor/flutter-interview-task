import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/app-images.dart';
import 'package:task/constants/widgets/custom-button.dart';
import 'package:task/views/book_a_walk/widgets/row_item.dart';
import 'package:task/views/book_a_walk/widgets/tab_container.dart';

class BookAWalkScreen extends StatelessWidget {
  static const routeName = '/book-a-walk';
  const BookAWalkScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.bookAWalk),
                fit: BoxFit.cover
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03, vertical: size.height * 0.05),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade100.withOpacity(0.5),
                      radius: SizeConfig.imageSizeMultiplier! * 6,
                      child: Icon(Icons.clear, color: Colors.white),
                    ),
                  ),
                  Container(
                    width: SizeConfig.widthMultiplier! * 30,
                    height: SizeConfig.heightMultiplier! * 6,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text('Verified', style: AppFonts.heading3white),
                        ),
                        Container(
                          width: SizeConfig.widthMultiplier! * 5,
                          height: SizeConfig.heightMultiplier! * 3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Icon(Icons.check, color: Colors.black54, size: SizeConfig.imageSizeMultiplier! * 4,),
                        )
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.6,
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: SizeConfig.heightMultiplier!),
            margin: EdgeInsets.only(top: size.height * 0.46),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Alex Murray', style: AppFonts.heading1,),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 1.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RowItem(firstText: '5\$/', secondText: 'hr',),
                        VerticalDivider(),
                        RowItem(firstText: '10', secondText: ' km',),
                        VerticalDivider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('4.4', style: AppFonts.heading4),
                            Icon(Icons.star, color: Colors.grey.shade500, size: SizeConfig.imageSizeMultiplier! * 4,)
                          ],
                        ),
                        VerticalDivider(),
                        RowItem(firstText: '450', secondText: ' walks',),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier! * 2),
                    child: Divider(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabContainer(text: 'About', color: Colors.black87,),
                      TabContainer(text: 'Location', color: Colors.grey.withOpacity(0.4),),
                      TabContainer(text: 'Reviews', color: Colors.grey.withOpacity(0.4),),
                    ]
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 3,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Age', style: AppFonts.body1,),
                          Text('30 years', style: AppFonts.heading4,)
                        ],
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier! * 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Experience', style: AppFonts.body1,),
                          Text('11 months', style: AppFonts.heading4,)
                        ],
                      )
                    ]
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
                        style: AppFonts.body1,),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Read more', 
                      style: TextStyle(fontFamily: 'Poppins', color: Colors.red))),
                       SizedBox(
                    height: SizeConfig.heightMultiplier! * 4,
                  ),
                  CustomButton(text: 'Check Schedule', onpressed: () {})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
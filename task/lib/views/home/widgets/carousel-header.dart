import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';

class CarouselHeader extends StatelessWidget {
  const CarouselHeader({
    Key? key,
    required this.title,
    required this.linkText,
  }) : super(key: key);

  final String title;
  final String linkText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: size.width * 0.05, left: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppFonts.heading1),
          Text(linkText, style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: SizeConfig.textMultiplier * 2.2,
            fontWeight: FontWeight.w400,
            fontFamily: 'Poppins',
            color: Colors.black87,
          ))
        ],
      ),
    );
  }
}
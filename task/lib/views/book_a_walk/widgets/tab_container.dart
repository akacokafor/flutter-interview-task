import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier! * 6,
      width: SizeConfig.widthMultiplier! * 22,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text(text, style: AppFonts.heading3white,)),
    );
  }
}
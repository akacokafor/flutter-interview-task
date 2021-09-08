import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';

class SliderCircle extends StatelessWidget {
  const SliderCircle({
    Key? key,
    required this.color,
    required this.progressNumber,
  }) : super(key: key);

  final Color color;
  final int progressNumber;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: SizeConfig.imageSizeMultiplier! * 4,
      backgroundColor: color,
      child: Text(
        progressNumber.toString(),
        style: AppFonts.heading4,
      ),
    );
  }
}

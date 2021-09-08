import 'package:flutter/material.dart';
import 'package:task/constants/app-fonts.dart';

class RowItem extends StatelessWidget {
  const RowItem({
    Key? key,
    required this.firstText,
    required this.secondText
  }) : super(key: key);

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(firstText, style: AppFonts.heading4),
        Text(secondText, style: AppFonts.body1)
      ],
    );
  }
}
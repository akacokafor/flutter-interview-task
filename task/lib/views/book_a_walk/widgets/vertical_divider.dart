import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';

class VerticalDivider extends StatelessWidget {
  const VerticalDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: SizeConfig.heightMultiplier! * 2.5,
      width: 1,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      color: Colors.grey,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';

class CenterLine extends StatelessWidget {
  const CenterLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier!),
      width: SizeConfig.widthMultiplier! * 3,
      color: Colors.grey.withOpacity(0.4)
    );
  }
}

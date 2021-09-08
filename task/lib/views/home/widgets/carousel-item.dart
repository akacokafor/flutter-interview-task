import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-fonts.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.widthMultiplier! * 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height * 0.2,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill
              )
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Mason York', style: AppFonts.heading4),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey.shade400,),
                      Text('7km from you', style: AppFonts.body3),
                    ],
                  )
                ],
              ),
              Container(
                height: SizeConfig.heightMultiplier! * 4,
                width: SizeConfig.widthMultiplier! * 12,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text('\$3/h', style: AppFonts.body1white))
              )
            ],
          )
        ]
      ),
    );
  }
}
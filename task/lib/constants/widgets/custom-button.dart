import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Function() onpressed;
  final double? width;
  final Color? color;

  CustomButton(
      {required this.text, required this.onpressed, this.width, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end:
              Alignment(0.8, 0.0),
          colors: <Color>[
            Color(0xFFFB724C),
            Color(0xFFFE904B),
          ],
        ),
      ),
      child: MaterialButton(
        elevation: 0,
        height: SizeConfig.heightMultiplier! * 5,
        minWidth:
            width == null ? MediaQuery.of(context).size.width * 0.8 : width,
        splashColor: Colors.white10,
        shape:
            RoundedRectangleBorder(borderRadius: new BorderRadius.circular(14)),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(icon != null) Padding(
              padding: EdgeInsets.only(right: SizeConfig.widthMultiplier!),
              child: icon!
              ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: SizeConfig.textMultiplier! * 2.3,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        color: Colors.transparent,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.name,
    required this.ontap,
  }) : super(key: key);

  final String name;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        alignment: Alignment.center,
        height: 58,
        width: double.infinity,
        child: Text(
         name,
          style: TextStyle(
            color: Color(0xFFF6F7FA),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: LinearGradient(
            colors: [
              Color(0XFFFB724C),
              Color(0XFFFE904B),
            ],
          ),
        ),
      ),
    );
  }
}

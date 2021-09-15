import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StepperComponent extends StatelessWidget {
  const StepperComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text('1'),
          style: TextButton.styleFrom(
              minimumSize: Size.square(8.w),
              primary: Colors.black,
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFFFCFCFC)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1.3.w),
          width: 2.7.w,
          height: 2,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('2'),
          style: TextButton.styleFrom(
              minimumSize: Size.square(8.w),
              primary: const Color(0xFFF7F7F8),
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFF404040)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1.3.w),
          width: 2.7.w,
          height: 2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('3'),
          style: TextButton.styleFrom(
              minimumSize: Size.square(8.w),
              primary: const Color(0xFFF7F7F8),
              shape: const CircleBorder(),
              backgroundColor: const Color(0xFF404040)),
        ),
      ],
    );
  }
}

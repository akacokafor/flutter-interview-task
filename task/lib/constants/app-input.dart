import 'package:flutter/material.dart';

import 'app-colors.dart';

class AppInput {
  static const focusedBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(14),
    ),
    borderSide: BorderSide(
      color: AppColors.PRIMARY_COLOR,
    ),
  );

  static const border = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(14),
    ),
    borderSide: BorderSide.none,
  );

  static const errorBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(14),
    ),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );

  static const TextStyle errorStyle = TextStyle(
      fontFamily: 'Poppins', fontSize: 14, backgroundColor: Colors.transparent
      );
}

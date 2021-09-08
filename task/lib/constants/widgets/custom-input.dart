import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-colors.dart';

import '../app-fonts.dart';
import '../app-input.dart';

class CustomInput extends StatelessWidget {
  final String? hint;
  final String? label;
  final String? description;
  final String? type;
  final double? width;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? initialValue;
  final bool obsecure;
  final bool enabled;
  final void Function(String?)? onSaved;
  final dynamic validator;
  final int maxLines;

  CustomInput({
    this.hint,
    this.label,
    this.initialValue = '',
    this.description,
    this.obsecure = false,
    required this.onSaved,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.type,
    this.width,
    this.enabled = true,
    this.maxLines = 1,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == null ? MediaQuery.of(context).size.width * 0.9 : width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
            child: TextFormField(
              cursorColor: AppColors.PRIMARY_COLOR,
              obscureText: obsecure,
              enabled: enabled,
              keyboardType: type == 'number'
                  ? TextInputType.numberWithOptions(signed: true, decimal: true)
                  : TextInputType.name,
              maxLength: type == 'number' ? 11 : 255,
              maxLines: maxLines,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier! * 4,
                    right: SizeConfig.widthMultiplier! * 2),
                errorMaxLines: 1,
                hintText: hint,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                hintStyle: TextStyle(
                    color: Colors.black26, fontFamily: 'Ubuntu', fontSize: 12),
                errorBorder: AppInput.errorBorder,
                errorStyle: AppInput.errorStyle,
                counterText: '',
                labelText: label,
                labelStyle: AppFonts.body1,
                focusedErrorBorder: AppInput.focusedBorder,
                filled: true,
                fillColor: enabled == true
                    ? Colors.grey.withOpacity(0.1)
                    : Colors.grey.withOpacity(0.06),
                focusedBorder: AppInput.focusedBorder,
                border: AppInput.border,
              ),
              initialValue: initialValue,
              validator: validator,
              onSaved: onSaved,
            ),
          ),
          if (description != null)
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                description!,
                style: AppFonts.body3,
              ),
            ),
        ],
      ),
    );
  }
}

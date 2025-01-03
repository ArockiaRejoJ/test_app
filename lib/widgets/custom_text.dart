import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomText(
      {super.key, this.text, this.textColor, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: textColor,
      ),
    );
  }
}

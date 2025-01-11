import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants/constants.dart';
import 'package:test_app/widgets/custom_text.dart';

class CustomContainer extends StatelessWidget {
  final int? number;
  final String? text;
  final Color? bgColor;
  const CustomContainer({super.key, this.number, this.text, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: Center(
        child: CustomText(
          text: '$text item ${number! + 1}',
          fontWeight: FontWeight.bold,
          textColor: white,
          fontSize: 20,
        ),
      ),
    );
  }
}

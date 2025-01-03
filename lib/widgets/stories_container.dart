import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/widgets/custom_text.dart';

import '../constants/constants.dart';

class StoriesContainer extends StatelessWidget {
  final int? number;
  const StoriesContainer({super.key, this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomText(
            text: 'Title $number',
            fontWeight: FontWeight.bold,
            textColor: black,
            fontSize: 12,
          ),
          CustomText(
            text:
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem.     ',
            fontWeight: FontWeight.normal,
            textColor: black,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants/constants.dart';
import 'package:test_app/widgets/custom_text.dart';

class RidesContainer extends StatelessWidget {
  const RidesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 320.w,
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 90.h,
            width: 320.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
                image: const DecorationImage(
                    image: AssetImage("assets/images/Bike.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Ride to nandi hills',
                  fontWeight: FontWeight.bold,
                  textColor: black,
                  fontSize: 14,
                ),
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      minRadius: 17.r,
                      maxRadius: 17.r,
                      backgroundColor: Colors.purple.shade100,
                      child: Icon(
                        Icons.person,
                        size: 22,
                        color: black,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Manish Surapaneni',
                          fontWeight: FontWeight.normal,
                          textColor: black,
                          fontSize: 12,
                        ),
                        SizedBox(height: 3.h),
                        CustomText(
                          text: 'Ducati',
                          fontWeight: FontWeight.normal,
                          textColor: grey,
                          fontSize: 10,
                        )
                      ],
                    ),
                    Spacer(),
                    CustomText(
                      text: 'Co Riders: 12',
                      fontWeight: FontWeight.normal,
                      textColor: grey,
                      fontSize: 12,
                    )
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.directions,
                      color: red,
                      size: 22,
                    ),
                    SizedBox(width: 5.w),
                    CustomText(
                      text: '900 kms',
                      fontWeight: FontWeight.normal,
                      textColor: grey,
                      fontSize: 10,
                    ),
                    Spacer(),
                    Icon(
                      Icons.calendar_month,
                      color: red,
                      size: 22,
                    ),
                    SizedBox(width: 5.w),
                    CustomText(
                      text: 'July 20 2024',
                      fontWeight: FontWeight.normal,
                      textColor: grey,
                      fontSize: 10,
                    ),
                    Spacer(),
                    Icon(
                      Icons.location_city,
                      color: red,
                      size: 22,
                    ),
                    SizedBox(width: 5.w),
                    CustomText(
                      text: 'Hyderabad',
                      fontWeight: FontWeight.normal,
                      textColor: grey,
                      fontSize: 10,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

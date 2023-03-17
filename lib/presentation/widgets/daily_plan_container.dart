import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:flutter/material.dart';

class DailyPlanContainer extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const DailyPlanContainer(
      {Key? key,
        required this.text,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimary.withOpacity(0.2),
        ),
        // height: 120.h,
        width: MediaQuery.of(context).size.width,
      child:
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
        Text(text,  style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: kBlack)),
        GestureDetector(
            onTap: onTap,
            child:
        Container(  padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kPrimary
            ),child:const  Text("Check", style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kWhite))))
      ])
    );}}
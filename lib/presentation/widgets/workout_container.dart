import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WorkoutsContainer extends StatelessWidget {
  final String text;
  final String image;
  final void Function() onTap;

  const WorkoutsContainer(
      {Key? key,
        required this.text,
        required this.image,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        width: MediaQuery.of(context).size.width,
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Image.asset(image),
              Container(width: 1, height: 60, color: kGrey),
              Text(text,  style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: kBlack)),
      GestureDetector(
                  onTap: onTap,
                  child: SvgPicture.asset("assets/svgs/arrow.svg")
              )
            ])
    );}}
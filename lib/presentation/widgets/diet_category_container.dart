import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:flutter/material.dart';

class DietCategoryContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final void Function() onTap;

  const DietCategoryContainer(
      {Key? key, required this.title, required this.subTitle, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          height: 260.h,
          width: 180.w,
          child: Image.asset(image, fit: BoxFit.fill,
            height: 260.h,
            width: 180.w,)),
      Positioned(
          bottom: 0,
          left: 0,
          right: 30,
          child: Container(
              height: 48.h,
              width: 140.w,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration:
              const BoxDecoration( borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                  topLeft: Radius.circular(0),
                  bottomLeft: Radius.circular(0)),
                  color: kWhite
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style:  TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: kBlack)),

                    Text(subTitle, style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlack))
                  ])
          )),
    ]);
  }
}

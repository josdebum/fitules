import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:flutter/material.dart';

class DailyChallengeContainer extends StatelessWidget {
  final String text;
  final String image;
  final void Function() onTap;

  const DailyChallengeContainer(
      {Key? key, required this.text, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
           height: 136.h,
          width: 214.w,
          child: Image.asset("assets/pngs/workout_1.png", fit:BoxFit.fitWidth, height: 136.h,
            width: 214.w,)),
      Positioned(
        bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              height: 48.h,
              width: 214.w,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: 
              const BoxDecoration( borderRadius: BorderRadius.only(
    topRight: Radius.circular(0),
    bottomRight: Radius.circular(16),
    topLeft: Radius.circular(0),
    bottomLeft: Radius.circular(16)),
                color: kWhite
          ),
              child: Column(children: const <Widget>[
         Divider(color: kPrimary),
        Text("DAILY WEIGHTLOSS CHALLENGE", style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: kBlack))
      ]))),
    ]);
  }
}

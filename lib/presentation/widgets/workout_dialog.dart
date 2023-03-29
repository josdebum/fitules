import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkoutDialog extends StatelessWidget {
  final String text;
  final String image;
  final void Function() onTap;

  const WorkoutDialog(
      {Key? key, required this.text, required this.image, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(0.3),
        body: Center(
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                color: kGrey3,
                height: 320.h,
                child: Stack(children: <Widget>[
                  Center(child: Image.asset("assets/pngs/workout_2.png")),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                          height: 50.h,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          color: kPrimary,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text("WALL SQUAT",
                                    style: TextStyle(
                                        fontSize: 14.3,
                                        fontWeight: FontWeight.w700,
                                        color: kWhite)),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: SvgPicture.asset(
                                        "assets/svgs/cancel.svg"))
                              ]))),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                          color: kPrimary,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text("DESCRIPTION",
                                    style: TextStyle(
                                        fontSize: 14.3,
                                        fontWeight: FontWeight.w700,
                                        color: kWhite)),
                                const Text(
                                        "Standing position wth your shoulder-width apart and back flat"
                                        " against a wall. Lower into a seated"
                                        " position by bending your knees at a 90-degree angle.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: kWhite))
                                    .addHeight(10),
                              ])))
                ]))));
  }
}
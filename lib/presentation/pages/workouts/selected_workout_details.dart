import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';
import 'package:fitules/presentation/widgets/workout_container.dart';
import 'package:fitules/presentation/widgets/workout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectedWorkoutDetailsScreen extends StatefulWidget {
  const SelectedWorkoutDetailsScreen({super.key});

  @override
  SelectedWorkoutDetailsScreenState createState() =>
      SelectedWorkoutDetailsScreenState();
}

class SelectedWorkoutDetailsScreenState
    extends State<SelectedWorkoutDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      const Scaffold(

          body: SingleChildScrollView()),
      Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
              width: double.infinity,
              height: 290,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: kPrimary),
              child: Column(children: <Widget>[
                const SizedBox(height: 30),
                Row(children: <Widget>[
                  Align(
                          alignment: Alignment.topLeft,
                          child: SvgPicture.asset(
                              "assets/svgs/appbar_leading.svg"))
                      .paddingRight(100),
                  const Text("Squat Workout",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: kWhite))
                ]).addHeight(20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                              radius: 32,
                              backgroundColor: kWhite,
                              child: Text("5"))
                          .paddingRight(22),
                      const CircleAvatar(
                              radius: 32,
                              backgroundColor: kWhite,
                              child: Text("5"))
                          .paddingRight(22),
                      const CircleAvatar(
                          radius: 32, backgroundColor: kWhite, child: Text("5"))
                    ]).addHeight(20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Calories",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: kWhite))
                          .paddingRight(30),
                      const Text("Minutes",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: kWhite))
                          .paddingRight(30),
                      const Text("Exercises",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: kWhite))
                    ])
              ]))),
      Positioned(
          top: 240,
          left: 20,
          right: 20,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhite,
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: <Widget>[
                    WorkoutsContainer(
                        text: "Squat Workout",
                        image: "assets/pngs/sqaut.png",
                        onTap: () {}),
                    Container(width: 280.w, height: 1, color: kGrey),
                    WorkoutsContainer(
                        text: "Plank Workout",
                        image: "assets/pngs/plank.png",
                        onTap: () {}),
                    Container(width: 280.w, height: 1, color: kGrey),
                    WorkoutsContainer(
                        text: "Ab Workout",
                        image: "assets/pngs/abs.png",
                        onTap: () {}),
                    Container(width: 280.w, height: 1, color: kGrey),
                    WorkoutsContainer(
                        text: "Strength Workout",
                        image: "assets/pngs/strength.png",
                        onTap: () {})
                  ])))),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
            width: double.infinity,
            height: 80,
            padding: const EdgeInsets.fromLTRB(16, 16, 18, 16),
            color: kPrimary,
            child: AppButton(
                text: "Start Workout",
                height: 40,
                onTap: () {
                  showDialog(
                    barrierColor: Colors.white.withOpacity(0),
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) {
                      return WorkoutDialog(text: "", image: "", onTap: () {});
                    },
                  );
                },
                buttonColor: kWhite,
                textColor: kPrimary,
                hasBorder: false)),
      )
    ]));
  }
}

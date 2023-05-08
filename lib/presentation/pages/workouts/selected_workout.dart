import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/workouts/selected_workout_details.dart';
import 'package:fitules/presentation/widgets/appbar.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SelectedWorkoutScreen extends StatefulWidget {
  const SelectedWorkoutScreen({super.key});

  @override
  SelectedWorkoutScreenState createState() => SelectedWorkoutScreenState();
}

class SelectedWorkoutScreenState extends State<SelectedWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ThemeNotifier>(context).darkTheme
          ? backgroundBlack
          : backgroundColor,
      appBar: FituleAppBar(
        title: 'Squat Workout',
        hasBackgroundColor: true,
        backgroundColor: kPrimary,
        leading: "assets/svgs/appbar_leading.svg",
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 20),
                        const Text("Duration",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: kBlack))
                            .addHeight(30),
                        const Text("Choose a desired duration for your workout")
                            .addHeight(300),
                        const Text("Difficulty",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: kBlack)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                          "assets/svgs/minus.svg"))
                                  .paddingRight(30),
                              Stack(children: <Widget>[
                                const SizedBox(height: 96, width: 110),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child:
                                      SvgPicture.asset("assets/svgs/range.svg"),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: SvgPicture.asset(
                                      "assets/svgs/range_count.svg"),
                                )
                              ]).paddingRight(30),
                              GestureDetector(
                                  onTap: () {},
                                  child:
                                      SvgPicture.asset("assets/svgs/plus.svg"))
                            ])
                      ])))),
      floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: AppButton(
              text: "Start",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SelectedWorkoutDetailsScreen()));
              },
              buttonColor: kPrimary,
              textColor: kWhite,
              hasBorder: false)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

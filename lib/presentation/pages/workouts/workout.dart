import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/workouts/selected_workout.dart';
import 'package:fitules/presentation/widgets/workout_challenge_container.dart';
import 'package:fitules/presentation/widgets/workout_container.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
 const  WorkoutScreen({super.key});
  @override
  WorkoutScreenState createState() => WorkoutScreenState();
}

class WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:  SafeArea(child:SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(children: <Widget>[
      const SizedBox(height: 20),
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: <Widget>[
      DailyChallengeContainer(text:"" , image: "", onTap: (){},).paddingRight(12),
      DailyChallengeContainer(text:"" , image: "", onTap: (){},).paddingRight(12),
      DailyChallengeContainer(text:"" , image: "", onTap: (){},)

    ])).addHeight(40),

      const Align(
          alignment: Alignment.topLeft,
          child:Text("WORKOUTS", style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: kBlack))).addHeight(20),

      Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhite,
          ),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
              children: <Widget>[
                WorkoutsContainer(text: "Squat Workout",
                    image: "assets/pngs/sqaut.png",
                    onTap: (){Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>
                    const SelectedWorkoutScreen()));}),
                Container(width: 280.w, height: 1, color: kGrey),
                WorkoutsContainer(text: "Plank Workout",image: "assets/pngs/plank.png", onTap: (){}),
                Container(width: 280.w, height: 1, color: kGrey),
                WorkoutsContainer(text: "Ab Workout",image: "assets/pngs/abs.png", onTap: (){}),
                Container(width: 280.w, height: 1, color: kGrey),
                WorkoutsContainer(text: "Strength Workout",image: "assets/pngs/strength.png", onTap: (){})

              ])))

    ]))))
    );
  }


}
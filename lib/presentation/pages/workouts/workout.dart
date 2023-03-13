import 'package:fitules/core/constants/color_constants.dart';
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
        backgroundColor: kLightGreen,
        // appBar: FituleAppBar(title: 'Sign In',),
        body:  Container()
    );
  }


}
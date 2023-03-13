import 'package:fitules/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const  HomeScreen({super.key});
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: kLightGreen,
        // appBar: FituleAppBar(title: 'Sign In',),
        body:  Container()
    );
  }
}
import 'dart:async';

import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/size_config.dart';
import 'package:fitules/presentation/pages/get_started/onboarding_screens.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () =>  Navigator.push(
        context, MaterialPageRoute(builder: (context) =>  const OnboardingScreens())));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kPrimary,
      body: Center(

        child:
          Image.asset(
           "assets/pngs/splash.png",
            width: 240,
            height: 70,

          ),
      )
    );
  }
}
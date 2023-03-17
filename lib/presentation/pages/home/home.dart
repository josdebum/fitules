import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/widgets/daily_plan_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        body:  SafeArea(child:SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: <Widget>[
           const Align(
             alignment: Alignment.topLeft,
             child: Text("Hi,Glow Toks",
                style: TextStyle(
                fontSize: 18.12,

                fontWeight: FontWeight.w500,
                color: kBlack)),),
              const Align(
                  alignment: Alignment.topLeft,
                  child:  Text("Level: Beginner", style: TextStyle(
                fontSize: 18.12,
                fontWeight: FontWeight.w500,
                color: kBlack)),).addHeight(20),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimary,
                ),
               // height: 120.h,
                width: MediaQuery.of(context).size.width,

                child: Column(children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                const Text("Sessions Leaderboard",  style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kWhite)),
                CircleAvatar(
                    radius: 16,
                    backgroundColor: kLightGreen,
                    child: SvgPicture.asset("assets/svgs/trophy.svg", height: 15, width: 15))
              ]).addHeight(16.h),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  <Widget>[
                const CircleAvatar(radius: 26,
                  backgroundColor: kLightGreen,
                ),

                Row(children: <Widget>[
                  const Text("View all", style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: kLightGreen)),
                  SvgPicture.asset("assets/svgs/forward_arrow.svg")
                ])
              ]

              )
            ])).addHeight(20),

              const Align(
                  alignment: Alignment.topLeft,
                  child:    Text("Daily Plan", style: TextStyle(
                fontSize: 18.12,
                fontWeight: FontWeight.w500,
                color: kBlack))).addHeight(13),

            DailyPlanContainer(text: "Today’s Nutrition plan", onTap: (){}).addHeight(20),
            DailyPlanContainer(text: "Today’s Workout Plan", onTap: (){}).addHeight(20),

              const Align(
                  alignment: Alignment.topLeft,
                  child:  Text("Weekly Stats", style: TextStyle(
                fontSize: 18.12,
                fontWeight: FontWeight.w500,
                color: kBlack))),




          ])

        ))
        ) );
  }
}
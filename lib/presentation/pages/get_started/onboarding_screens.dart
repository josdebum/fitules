import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/size_config/size_config.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/auth_screens/login.dart';
import 'package:fitules/presentation/pages/get_started/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreens> {
  final onBoard = OnBoard();
  int currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);
  void navigatePages() {
    if(  currentIndex == 2)
    {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  const LoginScreen()));}
    else{
      setState(() {
        currentIndex += 1;
      });
    }}

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: kLightGreen,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, child:PageView.builder(
            controller: _pageController,

            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return  Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                 SizedBox(height: 20.h),
                     Image.asset(
                              onBoard.onBoardingProvContents[currentIndex]
                                  .imgString,
                              fit:  BoxFit.cover).addHeight(40.h),
                        Text(
                          onBoard.onBoardingProvContents[currentIndex].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: kBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ).addHeight(20.h),

                        Padding(
                            padding:const EdgeInsets.symmetric(horizontal: 33),

                            child:  Text(
                                onBoard
                                    .onBoardingProvContents[currentIndex].description,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 14.5,
                                    fontWeight: FontWeight.w400,
                                    color: kBlack))).addHeight(100.h),


                  Center(
                    child: AnimatedSmoothIndicator(
                        count: onBoard.onBoardingProvContents.length,
                        activeIndex: currentIndex,
                        effect:  WormEffect(
                          spacing: 4,
                          activeDotColor: kPrimary,
                          dotColor: kPrimary.withOpacity(0.3),
                          dotHeight:10,
                          dotWidth: 10,
                        )),
                  ),




                        //const SizedBox(height: 20),
                        Visibility(
                            visible: currentIndex == 2,
                            child: Padding(
                                padding: EdgeInsets.only(top:20.h),
                                child:GestureDetector(
                                    onTap: () {
                                      navigatePages();
                                    },
                                    child: Container(
                                        width: 163.w,
                                        height: 46.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: kPrimary),
                                        child: Center(
                                            child: Text(
                                                currentIndex == 2 ? "Get Started" : "Next",
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color:kWhite)))))))]


              );}
        ),
      ),
    );
  }
}

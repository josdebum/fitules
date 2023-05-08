import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/themes/app_style.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/size_config/size_config.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/auth_screens/login.dart';
import 'package:fitules/presentation/pages/get_started/onboarding_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
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
      backgroundColor: Provider.of<ThemeNotifier>(context).darkTheme
          ? backgroundBlack
          : backgroundColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, child:PageView.builder(
            controller: _pageController,
         //   physics: NeverScrollableScrollPhysics(),

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
                  CupertinoSwitch(
                    key: const Key("themeSwitch"),
                    value: Provider.of<ThemeNotifier>(context).darkTheme,
                    // activeColor: kDarkGrey,
                    activeColor: Provider.of<ThemeNotifier>(context).darkTheme
                        ? kPrimary
                        : kWhite,
                    onChanged: (bool value) {
                      Provider.of<ThemeNotifier>(context, listen: false)
                          .toggleTheme();
                    },
                  ).scale(scale: 0.8, alignment: const Alignment(0.0, 0.0)),
                     Image.asset(
                              onBoard.onBoardingProvContents[currentIndex]
                                  .imgString,
                              fit:  BoxFit.cover).addHeight(40.h),
                        Text(
                          onBoard.onBoardingProvContents[currentIndex].title,
                          textAlign: TextAlign.center,
                          style:AppStyle.title.copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                        ).addHeight(20.h),

                        Padding(
                            padding:const EdgeInsets.symmetric(horizontal: 33),

                            child:  Text(
                                onBoard
                                    .onBoardingProvContents[currentIndex].description,
                                textAlign: TextAlign.center,
                                style: AppStyle.title.copyWith(fontSize: 15,
                                    fontWeight: FontWeight.w400))).addHeight(60.h),



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
                  ).addHeight(30.h),

                Align(
                    alignment: Alignment.bottomRight,
                    child: currentIndex == 2? Padding(
                        padding: EdgeInsets.only(top:20.h),
                        child:GestureDetector(
                            onTap: () {
                              navigatePages();
                            },
                            child: Container(
                                width: 140.w,
                                height: 44.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kPrimary),
                                child: Center(
                                    child: Text(
                                        currentIndex == 2 ? "Get Started" : "Next",
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color:kWhite)))))):
                    GestureDetector(
                        onTap: (){navigatePages();},
                        child:CircleAvatar(
                      backgroundColor: kWhite,
                      radius: 20,

                      child: SvgPicture.asset("assets/svgs/right_arrow.svg")))),


                ]


              );}
        ),
      ),
    );
  }
}

import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/navigation.dart';
import 'package:fitules/presentation/widgets/app_textfield.dart';
import 'package:fitules/presentation/widgets/appbar.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timelines/timelines.dart';

class SignUp2Screen extends StatefulWidget {
  const SignUp2Screen({super.key});

  @override
  SignUp2ScreenState createState() => SignUp2ScreenState();
}

class SignUp2ScreenState extends State<SignUp2Screen> {
  int _processIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List subTitle = ["This helps us to personalise your plan",
  ""];
  void navigatePages() {
    if(  _processIndex == 2)
    {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>
      const NavigationWidget()));

      }
    else{
      setState(() {
        _processIndex += 1;
      });
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kLightGreen,
        appBar: FituleAppBar(
          title: 'Sign Up',
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(children: <Widget>[
              Expanded(
                  child: Container(
                height: 60.h,
                alignment: Alignment.topCenter,
                child: Timeline.tileBuilder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  theme: TimelineThemeData(
                    direction: Axis.horizontal,
                    connectorTheme:
                        const ConnectorThemeData(space: 8.0, thickness: 2.0),
                  ),
                  builder: TimelineTileBuilder.connected(
                    connectionDirection: ConnectionDirection.before,
                    itemCount: 3,
                    itemExtentBuilder: (_, __) {
                      return 120;
                    },
                    oppositeContentsBuilder: (context, index) {
                      return Container();
                    },
                    contentsBuilder: (context, index) {
                      return Container();
                    },
                    indicatorBuilder: (_, index) {
                      if (index <= _processIndex) {
                        return const DotIndicator(
                         size: 16,
                          color: kPrimary,
                        );
                      } else {
                        return const DotIndicator(
                          size: 16,
                          color: kGrey,
                        );
                      }
                    },
                    connectorBuilder: (_, index, type) {
                      if (index > 0) {
                        return const SolidLineConnector(
                          color: kGrey,
                        );
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              )),

              Container(
                padding:  EdgeInsets.symmetric(horizontal: 20.h, vertical: 0.w),
                height: MediaQuery.of(context).size.height- 200.h,
                width: MediaQuery.of(context).size.width, child:PageView.builder(
                  controller: _pageController,

                  onPageChanged: (int index) {
                    setState(() {
                    _processIndex = index;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 20.h),
                         _processIndex == 1? getHWA().addHeight(100.h): _processIndex ==2? 
                         getCountry().addHeight(350.h): getGender().addHeight(200.h),


                     Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[CircleAvatar(
                                backgroundColor: kWhite,
                              radius: 20,

                              child: SvgPicture.asset("assets/svgs/green_arrow.svg")),
                            AppButton(
                              text: _processIndex ==3? "Finish":"Next",
                              hasBorder: false,
                               loadingIcon: false ,
                               hasPadding: false,
                               onTap: navigatePages,
                               buttonColor: kPrimary,
                  textColor: kWhite,
                  width: 110,
                  height: 40.h, )]


                          ),
]


                    );}
              ),
              ),
            ])));
  }




}
Widget getGender() {
  return Column(children: <Widget>[
      const Text("Tell us about yourself", style:
      TextStyle(color: kBlack, fontSize: 24, fontWeight: FontWeight.w600),),
    const Text("This helps us to personalise your plan", style:
    TextStyle(color: kBlack, fontSize: 14.5, fontWeight: FontWeight.w400),).addHeight(120.h),
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      Column(children: <Widget>[
        ClipRect(child: Image.asset("assets/pngs/male.png")),
        const Text("Male")
      ]).paddingRight(10),
      const Text("or").paddingRight(10),
      Column(children: <Widget>[  ClipRect(child: Image.asset("assets/pngs/female.png")),
        const Text("Female")])
    ])
  ]);
}

Widget getHWA() {
  return Column(children: <Widget>[
    //Text("Tell us more about yourself"),
    const AppTextField(title: "What’s your age?").addHeight(20.h),
    const AppTextField(title: "What’s your height?").addHeight(20.h),
    const AppTextField(title: "What’s your height?").addHeight(20.h),
    const AppTextField(title: "Your regular physical activity level?").addHeight(20.h),


  ]);
}

Widget getCountry(){
  return Column(children: <Widget>[

    const Text("Kindly choose your country for nutritional recommendation."),
     AppTextField(title: "", prefixIcon: SvgPicture.asset("assets/svgs/flag.svg"),
       suffixIcon: const Icon(Icons.arrow_drop_down_sharp,)).addHeight(20.h),



  ]);
}

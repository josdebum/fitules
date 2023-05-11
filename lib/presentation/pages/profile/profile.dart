import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/themes/app_style.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/local_notice_service.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    final Color iconColor =  Provider.of<ThemeNotifier>(context).darkTheme? kGrey3: kBlack ;
    int endTime = DateTime.now().millisecondsSinceEpoch ;
    return Scaffold(
        backgroundColor: Provider.of<ThemeNotifier>(context).darkTheme
            ? backgroundBlack
            : backgroundColor,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Align(
                              alignment: Alignment.topRight,
                              child:CupertinoSwitch(
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
                        ).scale(scale: 0.8, alignment: const Alignment(0.0, 0.0))),
                          const CircleAvatar(radius: 40, backgroundColor: kGrey2,).addHeight(4),
                          Text("Glow Toks", style: AppStyle.style1.copyWith(fontSize: 15, fontWeight: FontWeight.w700),),
                          const Text("Level: Beginner").addHeight(15),
                          const AppButton(
                            text: "Edit",
                            buttonColor: kPrimary,
                            width: 80,
                            textColor: kWhite,
                            hasBorder: false,
                          ).addHeight(15),
                          Card(
                              elevation: 1,
                              color: Provider.of<ThemeNotifier>(context).darkTheme
                                  ? kBlack
                                  : kWhite,
                              child: Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: Provider.of<ThemeNotifier>(context).darkTheme
                                          ? kBlack
                                          : kWhite,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(children: <Widget>[
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const<Widget>[
                                          Text("6ft 10In"),
                                          Text("55kg"),
                                          Text("24yrs")
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const <Widget>[
                                          Text("Height"),
                                          Text("Weight"),
                                          Text("Age")
                                        ]).addHeight(20),
                                  Align(alignment: Alignment.topLeft,child:  Text("Settings", style: AppStyle.style1.copyWith(fontSize: 16, fontWeight: FontWeight.w600))),
                                    ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        leading:SvgPicture.asset(
                                            "assets/svgs/profile.svg", width: 20, height: 20, ),
                                        title: const Text("Account"),
                                        trailing: SvgPicture.asset(
                                            "assets/svgs/icon_arrow.svg", color: iconColor)),
                                    ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        leading: SvgPicture.asset(
                                            "assets/svgs/goal_setting.svg", width: 10, height: 20, ),
                                        title: const Text("Goal Settings"),
                                        trailing: SvgPicture.asset(
                                            "assets/svgs/icon_arrow.svg", color: iconColor)),
                                    ListTile(
                                      onTap: (){LocalNoticeService().addNotification(
                                        'Health tips: Water reminder',
                                        "Take water to stay healthier",
                                        endTime,
                                        sound: 'workend.mp3', //Add this
                                        channel: 'work-end',
                                      );},
                                        contentPadding: EdgeInsets.zero,
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        leading:  SvgPicture.asset(
                                            "assets/svgs/notification.svg", width: 20, height: 20, ),
                                        title: const Text("Notification"),
                                        trailing: SvgPicture.asset(
                                            "assets/svgs/icon_arrow.svg",  color: iconColor)),

                                    ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        leading: SvgPicture.asset(
                                            "assets/svgs/nut_setting.svg"),
                                        title: const Text("Nutrition Settings"),
                                        trailing: SvgPicture.asset(
                                            "assets/svgs/icon_arrow.svg", color:iconColor)),

                                  ])))
                        ])))));
  }
}

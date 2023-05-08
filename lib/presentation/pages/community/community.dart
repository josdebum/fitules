import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  CommunityScreenState createState() => CommunityScreenState();
}

class CommunityScreenState extends State<CommunityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = [
    const Tab(text: 'Find Friends'),
    const Tab(text: 'Chatroom'),
    const Tab(text: 'Notification'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Provider.of<ThemeNotifier>(context).darkTheme
            ? backgroundBlack
            : backgroundColor,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AppTextField(
                        title: "",
                        hintText: "Search for users around you",
                        borderRadius: 30,
                        prefixIcon: SvgPicture.asset(
                          "assets/svgs/search.svg",
                          color: kGrey2,
                        ),
                      ).addHeight(20),
                      const CircleAvatar(radius: 30, backgroundColor: kGrey),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: SizedBox(
                            width: double.infinity,
                            height: 60,

                            child: TabBar(
                              controller: _tabController,
                              tabs: _tabs,
                              unselectedLabelColor: Provider.of<ThemeNotifier>(context).darkTheme
                                  ? kWhite
                                  : kBlack,
                              padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                             // labelPadding: EdgeInsets.all(10),
                              labelColor: kWhite,
                              indicatorPadding: const EdgeInsets.all(-10),
                              labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: kPrimary,
                              ),
                            ),
                          )),
                      Expanded(
                          child: TabBarView(
                              controller: _tabController,
                              children: <Widget>[
                            findFriends(),
                            chatRoom(),
                            notifications()
                          ]))
                    ]))));
  }
}

Widget findFriends() {
  return ListView.separated(
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
          leading: const CircleAvatar(
            radius: 34,
            backgroundColor: kWhite,
          ),
          trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: kPrimary),
              child: const Text(
                "Add Friend",
                style: TextStyle(
                     fontSize: 10, fontWeight: FontWeight.w500),
              )),
          title: const Text(
            "Chichi91",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500),
          ));
    },
    separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(height: 16);
    },
  );
}

Widget chatRoom() {
  return ListView.separated(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const ListTile(
            leading: CircleAvatar(
              radius: 34,
              backgroundColor: kWhite,
            ),
            trailing: CircleAvatar(
                radius: 14,
                backgroundColor: kPrimary,
                child: Text(
                  "12",
                  style: TextStyle(
                      color: kWhite, fontSize: 10, fontWeight: FontWeight.w500),
                )),
            subtitle: Text(
              "Congratulations!",
              style: TextStyle(
                 fontSize: 11, fontWeight: FontWeight.w400),
            ),
            title: Text(
              "Chichi91",
              style: TextStyle(
                   fontSize: 14, fontWeight: FontWeight.w500),
            ));
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 16);
      });
}

Widget notifications() {
  return ListView.separated(
    itemCount: 5,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
          leading: const CircleAvatar(
            radius: 34,
            backgroundColor: kWhite,
          ),
          trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: kPrimary),
              child: const Text(
                "View Profile",
                style: TextStyle(
                    color: kWhite, fontSize: 10, fontWeight: FontWeight.w500),
              )),
          subtitle: const Text(
            "accepted your friend request 5 hours ago",
            style: TextStyle(
               fontSize: 11, fontWeight: FontWeight.w400),
          ),
          title: const Text(
            "Chichi91",
            style: TextStyle(
                 fontSize: 12, fontWeight: FontWeight.w500),
          ));
    },
    separatorBuilder: (BuildContext context, int index) {
      return const Divider();
    },
  );
}

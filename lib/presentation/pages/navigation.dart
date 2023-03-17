import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/presentation/pages/community/community.dart';
import 'package:fitules/presentation/pages/home/home.dart';
import 'package:fitules/presentation/pages/nutrient/nutrients.dart';
import 'package:fitules/presentation/pages/profile/profile.dart';
import 'package:fitules/presentation/pages/workouts/workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NavigationWidget extends StatefulWidget {
 int? loadedTab;

   NavigationWidget({Key? key, this.loadedTab = 0}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.loadedTab,
        children: const [
           HomeScreen(),
           WorkoutScreen(),
           CommunityScreen(),
           NutrientScreen(),
           ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
           widget.loadedTab = index;
          });
        },
        currentIndex: widget.loadedTab ?? 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,

        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/svgs/home.svg",
                width: 21,
                height: 20,
                color:kPrimary
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/svgs/workouts.svg",
                width: 21,
                height: 20,
                color: kPrimary
            ),
            label: "Workout",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/svgs/community.svg",
                width: 21,
                height: 21,
                color:kPrimary
            ),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/svgs/nutrients.svg",
                width: 23,
                height: 23,
                color: kPrimary
            ),
            label: "Nutrition",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
                "assets/svgs/profile.svg",
                width: 22,
                height: 22,
                color:kPrimary
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

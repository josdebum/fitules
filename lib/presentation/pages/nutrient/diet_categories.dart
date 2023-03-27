import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/presentation/pages/nutrient/nutrient_info.dart';
import 'package:fitules/presentation/widgets/appbar.dart';
import 'package:fitules/presentation/widgets/daily_nutrient_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietCategoriesScreen extends StatefulWidget {
  const  DietCategoriesScreen({super.key});
  @override DietCategoriesScreenState createState() =>DietCategoriesScreenState();
}

class DietCategoriesScreenState extends State<DietCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kLightGreen,
        appBar: FituleAppBar(
          title: 'Diet Categories',
          automaticallyImplyLeading: false,
          leading: "assets/svgs/appbar_leading.svg",
          hasBackgroundColor: true,
          hasAction: true,
          action: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child:SvgPicture.asset("assets/svgs/search.svg")),
          textStyle: const TextStyle(color: kWhite, fontSize: 15, fontWeight: FontWeight.w700),
          backgroundColor: kPrimary,
        ),
        body: SafeArea(child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      MasonryGridView.count(
                          shrinkWrap: true,
                          //controller: _scrollController,
                          itemCount: 4,
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          itemBuilder: (context, index) {
                            return
                              DailyNutrientContainer(
                                  title: "BREAKFAST",
                                  isDietCategory: true,
                                  subTitle:
                                  "Plantain and egg",
                                  image: "assets/pngs/food_1.png",
                                  onTap: () {Navigator.push(
                                      context, MaterialPageRoute(builder: (context) =>
                                   NutrientInfoScreen()));}
                              );
                          })


                    ]))))
    );
  }
}
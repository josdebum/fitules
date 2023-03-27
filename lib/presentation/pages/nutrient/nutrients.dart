
import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/nutrient/diet_categories.dart';
import 'package:fitules/presentation/widgets/daily_nutrient_container.dart';
import 'package:fitules/presentation/widgets/diet_category_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NutrientScreen extends StatefulWidget {
  const  NutrientScreen({super.key});
  @override
  NutrientScreenState createState() => NutrientScreenState();
}

class NutrientScreenState extends State<NutrientScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: kLightGreen,
        // appBar: FituleAppBar(title: 'Sign In',),
        body:  SafeArea(child:SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[const Text("Today’s Nutrition"), GestureDetector(
              onTap: (){},
              child:const Text("See all"))]).addHeight(28),

          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: <Widget>[
                    DailyNutrientContainer(title: "BREAKFAST", subTitle: "Plantain and egg", image: "assets/pngs/food_1.png", onTap: (){})
                        .paddingRight(12),
                    DailyNutrientContainer(title: "BREAKFAST", subTitle: "Plantain and egg", image: "assets/pngs/food_1.png", onTap: (){}).paddingRight(12),
                    DailyNutrientContainer(title: "BREAKFAST", subTitle: "Plantain and egg", image: "assets/pngs/food_1.png", onTap: (){})

                  ])).addHeight(50),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[const Text("Diet Categries"), GestureDetector(
                  onTap: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                  const DietCategoriesScreen()));},
                  child:const Text("See all"))]).addHeight(28),

    MasonryGridView.count(
    shrinkWrap: true,
    //controller: _scrollController,
    itemCount: 4,
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 15,
    itemBuilder: (context, index) {

    return

          DietCategoryContainer(title: "VEGETARIAN DIET", subTitle: "15 days plan", image: "assets/pngs/food_2.png", onTap: (){});})



    ]))))
    );
  }
}
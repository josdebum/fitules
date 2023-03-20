
import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/widgets/daily_nutrient_container.dart';
import 'package:fitules/presentation/widgets/diet_category_container.dart';
import 'package:flutter/material.dart';

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
                    DailyNutrientContainer(title: "BREAKFAST", subTitle: "Plantain and egg", image: "", onTap: (){})
                        .paddingRight(12),
                    DailyNutrientContainer(title: "BREAKFAST", subTitle: "Plantain and egg", image: "", onTap: (){}).paddingRight(12),
                    DailyNutrientContainer(title: "BREAKFAST", subTitle: "Plantain and egg", image: "", onTap: (){})

                  ])).addHeight(50),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[const Text("Diet Categries"), GestureDetector(
                  onTap: (){},
                  child:const Text("See all"))]).addHeight(28),

          DietCategoryContainer(title: "VEGETARIAN DIET", subTitle: "15 days plan", image: "", onTap: (){})



    ]))))
    );
  }
}
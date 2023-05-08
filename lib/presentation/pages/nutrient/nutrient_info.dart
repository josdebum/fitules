import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class NutrientInfoScreen extends StatefulWidget {
  String? title;
  String? subTitle;
  String? image;
  bool? isDietCategory;
  String? description;
  String? ingredient;
  String? istructions;

  NutrientInfoScreen(
      {Key? key,
      this.title,
      this.isDietCategory,
      this.subTitle,
      this.image,
      this.description,
      this.ingredient,
      this.istructions})
      : super(key: key);

  @override
  NutrientInfoScreenState createState() => NutrientInfoScreenState();
}

class NutrientInfoScreenState extends State<NutrientInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ThemeNotifier>(context).darkTheme
          ? backgroundBlack
          : backgroundColor,
      body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: kPrimary),
            //height: 300.h,
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 50, 0, 3),
                        child:
                            SvgPicture.asset("assets/svgs/appbar_leading.svg"),
                      )),
                  Center(
                      child: Image.asset(
                    "assets/pngs/food_3.png",
                    fit: BoxFit.fill,
                    height: 235.h,
                    width: 250.w,
                  )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                         // height: 50.h,
                          width: 160.w,
                          padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                          decoration:  BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(0)),
                              color: Provider.of<ThemeNotifier>(context).darkTheme
                                  ? kBlack: kWhite),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("VEGAN DIET",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        )),
                                Text("30 days plan",
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                        ))
                              ]))),
                ])),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ).addHeight(4),
                  const Text(
                          "Nigerian-inspired, protein-rich vegan egusi stew. Enjoy this with rice, "
                          "yams, plantains, sweet or regular potatoes.")
                      .addHeight(12),
                  const Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ).addHeight(4),
                  const Text("1 large red bell pepper\n"
                          "1 large red chilli\n"
                          "½ inch ginger\n"
                          "4 tablespoons ground egusi (melon seeds)\n"
                          "1 pack tofu, drained and cubed\n"
                          "2 vegetable stock cubes\n"
                          "2 tablespoons olive oil\n"
                          "100g chopped kale or spinach")
                      .addHeight(12),
                  const Text(
                    "Instructions",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ).addHeight(4),
                  const Text(
                      "Preheat the oven to 200C. Line a baking tray with baking paper then evenly"
                      " distribute tofu on the tray and bake for 25 minutes, turning halfway through "
                      "cooking until all sides are golden then set aside and keep warm."
                      "Put the tomatoes, red onion, garlic cloves, bell pepper, ginger and chilli in a food processor "
                      "and blitz to form a smooth liquid. Tip the mixture into a medium saucepan and"
                      " cook on a medium heat for 25 minutes until the sauce reduces to a very thick paste."
                      "Heat the olive oil in another saucepan over medium heat. Once hot, add the ground egusi and "
                      "fry, stirring frequently for 4 minutes. Stir in the tomato paste, fry for an additional two "
                      "minutes then add around 200ml of water. Add the vegetable stock cube and adjust seasoning as"
                      "needed with salt pepper. Allow to cook on medium heat for 3 "
                      "minutes then add kale and tofu. Cook for 4-5 minutes or until the kale is tender"
                      "then serve over rice.")
                ])).addHeight(50.h)
      ])),
      floatingActionButton: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: AppButton(
              text: "Follow diet plan",
              buttonColor: kPrimary,
              textColor: kWhite,
              hasBorder: false)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

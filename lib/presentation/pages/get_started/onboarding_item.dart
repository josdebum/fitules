class OnBoardingItem {
  final String imgString;
  final String title;
  final String description;

  OnBoardingItem(this.imgString, this.title, this.description);
}

class OnBoard {
  List<OnBoardingItem> onBoardingProvContents = [
    OnBoardingItem(
        "assets/pngs/onboarding_1.png",
        "Find a workout buddy around you",
        "Get consistent by finding  workout buddy close to your location"),
    OnBoardingItem(
        "assets/pngs/onboarding_2.png",
        "Nutritional Recommendation",
        "Get daily nutritional recommendations to help our fitness journey "),
    OnBoardingItem("assets/pngs/onboarding_3.png", "Compete with users",
        "Become the best in fitules community by becoming the top on the leaderboard"),
  ];
}
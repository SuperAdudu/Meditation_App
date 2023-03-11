import 'package:flutter/material.dart';
import 'package:meditation_app/detail/DetailScreen.dart';
import 'package:meditation_app/screen/components/CategoryCard.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          CategoryCard(
            svgSrc: "assets/icons/Hamburger.svg",
            title: "Diet Recommendation",
          ),
          CategoryCard(
            svgSrc: "assets/icons/Excrecises.svg",
            title: "Kegel Exercises",
          ),
          CategoryCard(
            svgSrc: "assets/icons/Meditation.svg",
            title: "Meditation",
          ),
          CategoryCard(
            svgSrc: "assets/icons/yoga.svg",
            title: "Yoga",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BotNavItem(
            title: "Today",
            svgSrc: "assets/icons/calendar.svg",
            // isAction: true,
          ),
          BotNavItem(
            title: "All Exercises",
            svgSrc: "assets/icons/gym.svg",
            isAction: true,
          ),
          BotNavItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
          ),
        ],
      ),
    );
  }
}

class BotNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final bool isAction;
  const BotNavItem({
    super.key,
    required this.svgSrc,
    required this.title,
    this.isAction = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgSrc,
            color: isAction ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
              color: isAction ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}

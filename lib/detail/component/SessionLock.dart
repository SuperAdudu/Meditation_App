import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant.dart';

class SessionLock extends StatelessWidget {
  const SessionLock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -13,
            color: kShadowColor,
          ),
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic 2",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Text("Start your deepen you practice"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Lock.svg"),
          ),
        ],
      ),
    );
  }
}

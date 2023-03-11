import 'package:flutter/material.dart';
import 'package:meditation_app/constant.dart';

class BackDrop extends StatelessWidget {
  const BackDrop({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.45,
      decoration: const BoxDecoration(
        color: kBlueLightColor,
        image: DecorationImage(
          image: AssetImage("assets/images/meditation_bg.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
        color: Color(0xFFF5CEB8),
        image: DecorationImage(
          alignment: Alignment.centerLeft,
          image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
        ),
      ),
    );
  }
}
